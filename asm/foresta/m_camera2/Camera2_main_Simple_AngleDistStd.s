lbl_80381B40:
/* 80381B40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80381B44  7C 08 02 A6 */	mflr r0
/* 80381B48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80381B4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80381B50  4B D1 93 85 */	bl func_8009AED4
/* 80381B54  3C E0 80 64 */	lis r7, std_angle@ha /* 0x8064154C@ha */
/* 80381B58  3C C0 80 64 */	lis r6, lit_1268@ha /* 0x806414F0@ha */
/* 80381B5C  39 07 15 4C */	addi r8, r7, std_angle@l /* 0x8064154C@l */
/* 80381B60  7C 9E 23 78 */	mr r30, r4
/* 80381B64  80 E8 00 00 */	lwz r7, 0(r8)
/* 80381B68  7C BF 2B 78 */	mr r31, r5
/* 80381B6C  A0 08 00 04 */	lhz r0, 4(r8)
/* 80381B70  7C 7D 1B 78 */	mr r29, r3
/* 80381B74  90 E4 00 00 */	stw r7, 0(r4)
/* 80381B78  C0 06 14 F0 */	lfs f0, lit_1268@l(r6)  /* 0x806414F0@l */
/* 80381B7C  B0 1E 00 04 */	sth r0, 4(r30)
/* 80381B80  D0 05 00 00 */	stfs f0, 0(r5)
/* 80381B84  4B FF BE E1 */	bl Camera2_InDoorCheck
/* 80381B88  2C 03 00 00 */	cmpwi r3, 0
/* 80381B8C  40 82 00 20 */	bne lbl_80381BAC
/* 80381B90  80 1D 1C A4 */	lwz r0, 0x1ca4(r29)
/* 80381B94  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80381B98  40 82 00 14 */	bne lbl_80381BAC
/* 80381B9C  7F A3 EB 78 */	mr r3, r29
/* 80381BA0  7F E4 FB 78 */	mr r4, r31
/* 80381BA4  7F C5 F3 78 */	mr r5, r30
/* 80381BA8  4B FF CB 45 */	bl Camera2_Normal_Swing
lbl_80381BAC:
/* 80381BAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80381BB0  4B D1 93 71 */	bl func_8009AF20
/* 80381BB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80381BB8  7C 08 03 A6 */	mtlr r0
/* 80381BBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80381BC0  4E 80 00 20 */	blr 
