lbl_805884CC:
/* 805884CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805884D0  7C 08 02 A6 */	mflr r0
/* 805884D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805884D8  39 61 00 20 */	addi r11, r1, 0x20
/* 805884DC  4B B1 29 F9 */	bl func_8009AED4
/* 805884E0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805884E4  7C 7F 1B 78 */	mr r31, r3
/* 805884E8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805884EC  7C 9D 23 78 */	mr r29, r4
/* 805884F0  3F C5 00 02 */	addis r30, r5, 2
/* 805884F4  80 BE 60 4C */	lwz r5, 0x604c(r30)
/* 805884F8  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 805884FC  7D 89 03 A6 */	mtctr r12
/* 80588500  4E 80 04 21 */	bctrl 
/* 80588504  2C 03 00 01 */	cmpwi r3, 1
/* 80588508  40 82 00 64 */	bne lbl_8058856C
/* 8058850C  3C 60 80 59 */	lis r3, aTS0_schedule_proc@ha /* 0x8058935C@ha */
/* 80588510  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806C1F34@ha */
/* 80588514  38 03 93 5C */	addi r0, r3, aTS0_schedule_proc@l /* 0x8058935C@l */
/* 80588518  90 1F 07 F0 */	stw r0, 0x7f0(r31)
/* 8058851C  38 A4 1F 34 */	addi r5, r4, ct_data@l /* 0x806C1F34@l */
/* 80588520  7F E3 FB 78 */	mr r3, r31
/* 80588524  7F A4 EB 78 */	mr r4, r29
/* 80588528  80 DE 60 4C */	lwz r6, 0x604c(r30)
/* 8058852C  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 80588530  7D 89 03 A6 */	mtctr r12
/* 80588534  4E 80 04 21 */	bctrl 
/* 80588538  3C 60 80 6C */	lis r3, data_806C1DA0@ha /* 0x806C1DA0@ha */
/* 8058853C  A0 9F 00 06 */	lhz r4, 6(r31)
/* 80588540  A4 03 1D A0 */	lhzu r0, data_806C1DA0@l(r3)  /* 0x806C1DA0@l */
/* 80588544  7C 00 20 40 */	cmplw r0, r4
/* 80588548  40 81 00 08 */	ble lbl_80588550
/* 8058854C  B0 83 00 00 */	sth r4, 0(r3)
lbl_80588550:
/* 80588550  3C 60 81 1F */	lis r3, aTS0_regist_sum@ha /* 0x811ED3D4@ha */
/* 80588554  38 00 00 FF */	li r0, 0xff
/* 80588558  38 83 D3 D4 */	addi r4, r3, aTS0_regist_sum@l /* 0x811ED3D4@l */
/* 8058855C  80 64 00 00 */	lwz r3, 0(r4)
/* 80588560  38 63 00 01 */	addi r3, r3, 1
/* 80588564  90 64 00 00 */	stw r3, 0(r4)
/* 80588568  98 1F 09 B4 */	stb r0, 0x9b4(r31)
lbl_8058856C:
/* 8058856C  39 61 00 20 */	addi r11, r1, 0x20
/* 80588570  4B B1 29 B1 */	bl func_8009AF20
/* 80588574  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80588578  7C 08 03 A6 */	mtlr r0
/* 8058857C  38 21 00 20 */	addi r1, r1, 0x20
/* 80588580  4E 80 00 20 */	blr 
