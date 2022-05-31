lbl_80592194:
/* 80592194  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80592198  7C 08 02 A6 */	mflr r0
/* 8059219C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805921A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805921A4  4B B0 8D 31 */	bl func_8009AED4
/* 805921A8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805921AC  7C 7D 1B 78 */	mr r29, r3
/* 805921B0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805921B4  7C 9E 23 78 */	mr r30, r4
/* 805921B8  3F E5 00 02 */	addis r31, r5, 2
/* 805921BC  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 805921C0  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 805921C4  7D 89 03 A6 */	mtctr r12
/* 805921C8  4E 80 04 21 */	bctrl 
/* 805921CC  2C 03 00 01 */	cmpwi r3, 1
/* 805921D0  40 82 00 30 */	bne lbl_80592200
/* 805921D4  3C 60 80 59 */	lis r3, aNHM_schedule_proc@ha /* 0x80592680@ha */
/* 805921D8  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806C2A04@ha */
/* 805921DC  38 03 26 80 */	addi r0, r3, aNHM_schedule_proc@l /* 0x80592680@l */
/* 805921E0  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 805921E4  38 A4 2A 04 */	addi r5, r4, ct_data@l /* 0x806C2A04@l */
/* 805921E8  7F A3 EB 78 */	mr r3, r29
/* 805921EC  7F C4 F3 78 */	mr r4, r30
/* 805921F0  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 805921F4  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 805921F8  7D 89 03 A6 */	mtctr r12
/* 805921FC  4E 80 04 21 */	bctrl 
lbl_80592200:
/* 80592200  39 61 00 20 */	addi r11, r1, 0x20
/* 80592204  4B B0 8D 1D */	bl func_8009AF20
/* 80592208  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059220C  7C 08 03 A6 */	mtlr r0
/* 80592210  38 21 00 20 */	addi r1, r1, 0x20
/* 80592214  4E 80 00 20 */	blr 
