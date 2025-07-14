-- AddForeignKey
ALTER TABLE "staff_dependent" ADD CONSTRAINT "staff_dependent_staff_no_fk" FOREIGN KEY ("staff_no") REFERENCES "staff"("staff_no") ON DELETE RESTRICT ON UPDATE CASCADE;
