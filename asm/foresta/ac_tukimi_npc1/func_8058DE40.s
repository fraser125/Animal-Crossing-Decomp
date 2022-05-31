lbl_8058DE40:
/* 8058DE40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058DE44  7C 08 02 A6 */	mflr r0
/* 8058DE48  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058DE4C  39 61 00 20 */	addi r11, r1, 0x20
/* 8058DE50  4B B0 D0 85 */	bl func_8009AED4
/* 8058DE54  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058DE58  7C 7D 1B 78 */	mr r29, r3
/* 8058DE5C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058DE60  7C 9E 23 78 */	mr r30, r4
/* 8058DE64  3F E5 00 02 */	addis r31, r5, 2
/* 8058DE68  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8058DE6C  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8058DE70  7D 89 03 A6 */	mtctr r12
/* 8058DE74  4E 80 04 21 */	bctrl 
/* 8058DE78  2C 03 00 01 */	cmpwi r3, 1
/* 8058DE7C  40 82 00 30 */	bne lbl_8058DEAC
/* 8058DE80  3C 60 80 59 */	lis r3, aTM1_schedule_proc@ha /* 0x8058E38C@ha */
/* 8058DE84  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806C24C4@ha */
/* 8058DE88  38 03 E3 8C */	addi r0, r3, aTM1_schedule_proc@l /* 0x8058E38C@l */
/* 8058DE8C  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 8058DE90  38 A4 24 C4 */	addi r5, r4, ct_data@l /* 0x806C24C4@l */
/* 8058DE94  7F A3 EB 78 */	mr r3, r29
/* 8058DE98  7F C4 F3 78 */	mr r4, r30
/* 8058DE9C  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8058DEA0  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8058DEA4  7D 89 03 A6 */	mtctr r12
/* 8058DEA8  4E 80 04 21 */	bctrl 
lbl_8058DEAC:
/* 8058DEAC  39 61 00 20 */	addi r11, r1, 0x20
/* 8058DEB0  4B B0 D0 71 */	bl func_8009AF20
/* 8058DEB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058DEB8  7C 08 03 A6 */	mtlr r0
/* 8058DEBC  38 21 00 20 */	addi r1, r1, 0x20
/* 8058DEC0  4E 80 00 20 */	blr 
