lbl_806284D8:
/* 806284D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806284DC  7C 08 02 A6 */	mflr r0
/* 806284E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806284E4  39 61 00 20 */	addi r11, r1, 0x20
/* 806284E8  4B A7 29 ED */	bl func_8009AED4
/* 806284EC  7C 7D 1B 78 */	mr r29, r3
/* 806284F0  80 03 02 0C */	lwz r0, 0x20c(r3)
/* 806284F4  7F C0 22 14 */	add r30, r0, r4
/* 806284F8  7F C3 FE 70 */	srawi r3, r30, 0x1f
/* 806284FC  7C 60 F2 78 */	xor r0, r3, r30
/* 80628500  7C 03 00 50 */	subf r0, r3, r0
/* 80628504  2C 00 00 20 */	cmpwi r0, 0x20
/* 80628508  41 80 00 68 */	blt lbl_80628570
/* 8062850C  83 FD 02 14 */	lwz r31, 0x214(r29)
/* 80628510  38 60 00 01 */	li r3, 1
/* 80628514  48 00 57 F1 */	bl sAdo_SysTrgStart
/* 80628518  2C 1E 00 00 */	cmpwi r30, 0
/* 8062851C  40 81 00 28 */	ble lbl_80628544
/* 80628520  38 7F 00 01 */	addi r3, r31, 1
/* 80628524  3B C0 00 00 */	li r30, 0
/* 80628528  4B FF FF 11 */	bl select_course_step_sub
/* 8062852C  7C 7F 1B 78 */	mr r31, r3
/* 80628530  7F A3 EB 78 */	mr r3, r29
/* 80628534  38 A0 00 01 */	li r5, 1
/* 80628538  7F E4 FB 78 */	mr r4, r31
/* 8062853C  4B FF FF 1D */	bl select_adjust_top_no
/* 80628540  48 00 00 24 */	b lbl_80628564
lbl_80628544:
/* 80628544  38 7F FF FF */	addi r3, r31, -1
/* 80628548  3B C0 00 00 */	li r30, 0
/* 8062854C  4B FF FE ED */	bl select_course_step_sub
/* 80628550  7C 7F 1B 78 */	mr r31, r3
/* 80628554  7F A3 EB 78 */	mr r3, r29
/* 80628558  38 A0 FF FF */	li r5, -1
/* 8062855C  7F E4 FB 78 */	mr r4, r31
/* 80628560  4B FF FE F9 */	bl select_adjust_top_no
lbl_80628564:
/* 80628564  38 00 00 06 */	li r0, 6
/* 80628568  90 1D 02 10 */	stw r0, 0x210(r29)
/* 8062856C  93 FD 02 14 */	stw r31, 0x214(r29)
lbl_80628570:
/* 80628570  93 DD 02 0C */	stw r30, 0x20c(r29)
/* 80628574  39 61 00 20 */	addi r11, r1, 0x20
/* 80628578  4B A7 29 A9 */	bl func_8009AF20
/* 8062857C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80628580  7C 08 03 A6 */	mtlr r0
/* 80628584  38 21 00 20 */	addi r1, r1, 0x20
/* 80628588  4E 80 00 20 */	blr 
