lbl_80591AC8:
/* 80591AC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80591ACC  7C 08 02 A6 */	mflr r0
/* 80591AD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80591AD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80591AD8  4B B0 93 FD */	bl func_8009AED4
/* 80591ADC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80591AE0  7C 7D 1B 78 */	mr r29, r3
/* 80591AE4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80591AE8  7C 9E 23 78 */	mr r30, r4
/* 80591AEC  3F E5 00 02 */	addis r31, r5, 2
/* 80591AF0  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80591AF4  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 80591AF8  7D 89 03 A6 */	mtctr r12
/* 80591AFC  4E 80 04 21 */	bctrl 
/* 80591B00  2C 03 00 01 */	cmpwi r3, 1
/* 80591B04  40 82 00 48 */	bne lbl_80591B4C
/* 80591B08  3C 60 80 65 */	lis r3, data_80649C9C@ha /* 0x80649C9C@ha */
/* 80591B0C  3C 80 80 59 */	lis r4, aHT1_schedule_proc@ha /* 0x80592068@ha */
/* 80591B10  38 C3 9C 9C */	addi r6, r3, data_80649C9C@l /* 0x80649C9C@l */
/* 80591B14  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 80591B18  C0 06 00 00 */	lfs f0, 0(r6)
/* 80591B1C  38 04 20 68 */	addi r0, r4, aHT1_schedule_proc@l /* 0x80592068@l */
/* 80591B20  3C 60 80 6C */	lis r3, ct_data@ha /* 0x806C297C@ha */
/* 80591B24  7F C4 F3 78 */	mr r4, r30
/* 80591B28  EC 01 00 2A */	fadds f0, f1, f0
/* 80591B2C  38 A3 29 7C */	addi r5, r3, ct_data@l /* 0x806C297C@l */
/* 80591B30  7F A3 EB 78 */	mr r3, r29
/* 80591B34  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 80591B38  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 80591B3C  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80591B40  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 80591B44  7D 89 03 A6 */	mtctr r12
/* 80591B48  4E 80 04 21 */	bctrl 
lbl_80591B4C:
/* 80591B4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80591B50  4B B0 93 D1 */	bl func_8009AF20
/* 80591B54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80591B58  7C 08 03 A6 */	mtlr r0
/* 80591B5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80591B60  4E 80 00 20 */	blr 
