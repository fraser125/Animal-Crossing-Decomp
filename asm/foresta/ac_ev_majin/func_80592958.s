lbl_80592958:
/* 80592958  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059295C  7C 08 02 A6 */	mflr r0
/* 80592960  90 01 00 24 */	stw r0, 0x24(r1)
/* 80592964  39 61 00 20 */	addi r11, r1, 0x20
/* 80592968  4B B0 85 6D */	bl func_8009AED4
/* 8059296C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80592970  7C 7D 1B 78 */	mr r29, r3
/* 80592974  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80592978  7C 9E 23 78 */	mr r30, r4
/* 8059297C  3F E5 00 02 */	addis r31, r5, 2
/* 80592980  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80592984  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 80592988  7D 89 03 A6 */	mtctr r12
/* 8059298C  4E 80 04 21 */	bctrl 
/* 80592990  2C 03 00 01 */	cmpwi r3, 1
/* 80592994  40 82 00 4C */	bne lbl_805929E0
/* 80592998  3C 60 80 59 */	lis r3, aEMJ_schedule_proc@ha /* 0x80592EE0@ha */
/* 8059299C  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806C2A74@ha */
/* 805929A0  38 03 2E E0 */	addi r0, r3, aEMJ_schedule_proc@l /* 0x80592EE0@l */
/* 805929A4  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 805929A8  38 A4 2A 74 */	addi r5, r4, ct_data@l /* 0x806C2A74@l */
/* 805929AC  7F A3 EB 78 */	mr r3, r29
/* 805929B0  7F C4 F3 78 */	mr r4, r30
/* 805929B4  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 805929B8  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 805929BC  7D 89 03 A6 */	mtctr r12
/* 805929C0  4E 80 04 21 */	bctrl 
/* 805929C4  38 00 00 01 */	li r0, 1
/* 805929C8  38 60 00 4E */	li r3, 0x4e
/* 805929CC  98 1D 08 BE */	stb r0, 0x8be(r29)
/* 805929D0  38 00 00 02 */	li r0, 2
/* 805929D4  B0 7D 09 76 */	sth r3, 0x976(r29)
/* 805929D8  B0 7D 09 74 */	sth r3, 0x974(r29)
/* 805929DC  98 1D 09 73 */	stb r0, 0x973(r29)
lbl_805929E0:
/* 805929E0  39 61 00 20 */	addi r11, r1, 0x20
/* 805929E4  4B B0 85 3D */	bl func_8009AF20
/* 805929E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805929EC  7C 08 03 A6 */	mtlr r0
/* 805929F0  38 21 00 20 */	addi r1, r1, 0x20
/* 805929F4  4E 80 00 20 */	blr 
