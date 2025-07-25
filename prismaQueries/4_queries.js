const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient()
const util = require('util');

function getAllStaff() {
	return prisma.staff.findMany({
	})
}

/** Section A: Basic Queries */


function getHodInfo() {
	return prisma.department.findMany({
		//TODO: Implement the query
		select: {
			deptName: true,
			hodApptDate: true
		}
	});
}


function getDeptStaffingInfo() {
	return prisma.department.findMany({
		//TODO: Implement the query
		select: {
			deptCode: true,
			noOfStaff: true
		,},
		orderBy: {noOfStaff: 'desc'}
	});
}


/** Section B: Filtering Queries */


function getStaffofSpecificCitizenships() {
	return prisma.staff.findMany({
		//TODO: Implement the query
		where: {
			citizenship: { in: ["Hong Kong", "Korea", "Malaysia", "Thailand"] }
		},
		select: {
			citizenship: true,
			staffName: true
		}
	});
}


function getStaffByCriteria1() {
	return prisma.staff.findMany({
		//TODO: Implement the query
		select: {
			gender: true,
			pay: true,
			maritalStatus: true,
			staffName: true
		},
		where: {
			OR: [
				{
					pay: {
						gte: 4000,
						lte: 7000
					}
				},
				{
					pay: {
						gte: 2000,
						lte: 6000
					}
				}
			],
			maritalStatus: "M"
		},
		orderBy: [
			{
				gender: 'asc'
			},
			{
				pay: 'asc'
			}
		]
	});
}


/** Section C: Relation Queries */

async function getDepartmentCourses() {
	return prisma.department.findMany({
		//TODO: Implement the query
		select: {
			deptName: true,
			course: {
				select: {
					crseName: true,
					crseFee: true,
					labFee: true
				}
			}
		},
		orderBy: [
			{
				deptName: 'asc'
			}
		]
	})
}


const getStaffAndDependents = () => {
	return prisma.staff.findMany({
		//TODO: Implement the query
		select: {
			staffName: true,
			staffDependent: {
				select: {
					dependentName: true,
					relationship: true
				}
			}
		},
		where: {
			staffDependent: {
				some: {}
			}
		},
		orderBy: {
			staffName: 'asc'
		}
	});
};

const getDepartmentCourseStudentDob = () => {
	return prisma.department.findMany({
		//TODO: Implement the query
		select: {
			deptName: true,
			course: {
				select: {
					crseName: true,
					student: {
						select: {
							studName: true,
							dob: true
						},
						orderBy: { dob: 'desc' }
					}
				},
				where: {
					student: {some: {}}
				},
				orderBy: { crseName: 'asc' }
			}
		},
		where: {
			course: {
				some: {}
			}
		},
		orderBy: { deptName: 'asc' },
	});
};

async function main(argument) {
	let results;
	switch (argument) {
		case 'getAllStaff':
			results = await getAllStaff();
			break;
		case 'getHodInfo':
			results = await getHodInfo();
			break;
		case 'getDeptStaffingInfo':
			results = await getDeptStaffingInfo();
			break;
		case 'getStaffofSpecificCitizenships':
			results = await getStaffofSpecificCitizenships();
			break;
		case 'getStaffByCriteria1':
			results = await getStaffByCriteria1();
			break;
		case 'getDepartmentCourses':
			results = await getDepartmentCourses();
			break;
		case 'getStaffAndDependents':
			results = await getStaffAndDependents();
			break;
		case 'getDepartmentCourseStudentDob':
			results = await getDepartmentCourseStudentDob();
			break;
		default:
			console.log('Invalid argument');
			break;
	}
	results && console.log(util.inspect(results, { showHidden: false, depth: null, colors: true }));
}

main(process.argv[2]);
