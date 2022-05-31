lbl_80402DC4:
/* 80402DC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80402DC8  7C 08 02 A6 */	mflr r0
/* 80402DCC  38 C0 00 00 */	li r6, 0
/* 80402DD0  38 E0 00 40 */	li r7, 0x40
/* 80402DD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80402DD8  38 00 00 01 */	li r0, 1
/* 80402DDC  39 00 00 01 */	li r8, 1
/* 80402DE0  39 20 00 02 */	li r9, 2
/* 80402DE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80402DE8  7C 9F 23 78 */	mr r31, r4
/* 80402DEC  39 40 00 08 */	li r10, 8
/* 80402DF0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80402DF4  7C 7E 1B 78 */	mr r30, r3
/* 80402DF8  38 BE 11 BC */	addi r5, r30, 0x11bc
/* 80402DFC  90 01 00 08 */	stw r0, 8(r1)
/* 80402E00  4B FF 9C 41 */	bl mCD_get_status_common
/* 80402E04  2C 03 FF FF */	cmpwi r3, -1
/* 80402E08  40 82 00 10 */	bne lbl_80402E18
/* 80402E0C  7F C3 F3 78 */	mr r3, r30
/* 80402E10  7F E4 FB 78 */	mr r4, r31
/* 80402E14  4B FF F8 A5 */	bl mCD_SaveStation_Passport_rewrite_main
lbl_80402E18:
/* 80402E18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80402E1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80402E20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80402E24  7C 08 03 A6 */	mtlr r0
/* 80402E28  38 21 00 20 */	addi r1, r1, 0x20
/* 80402E2C  4E 80 00 20 */	blr 
