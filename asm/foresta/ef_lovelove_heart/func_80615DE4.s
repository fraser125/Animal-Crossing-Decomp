lbl_80615DE4:
/* 80615DE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80615DE8  7C 08 02 A6 */	mflr r0
/* 80615DEC  7C E8 3B 78 */	mr r8, r7
/* 80615DF0  38 E0 00 00 */	li r7, 0
/* 80615DF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80615DF8  39 40 00 00 */	li r10, 0
/* 80615DFC  80 03 00 00 */	lwz r0, 0(r3)
/* 80615E00  81 23 00 04 */	lwz r9, 4(r3)
/* 80615E04  80 A3 00 08 */	lwz r5, 8(r3)
/* 80615E08  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80615E0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80615E10  38 00 00 00 */	li r0, 0
/* 80615E14  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80615E18  91 21 00 14 */	stw r9, 0x14(r1)
/* 80615E1C  3D 63 00 02 */	addis r11, r3, 2
/* 80615E20  7C 89 23 78 */	mr r9, r4
/* 80615E24  38 81 00 10 */	addi r4, r1, 0x10
/* 80615E28  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80615E2C  38 60 00 15 */	li r3, 0x15
/* 80615E30  38 A0 00 00 */	li r5, 0
/* 80615E34  90 01 00 08 */	stw r0, 8(r1)
/* 80615E38  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 80615E3C  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 80615E40  7D 89 03 A6 */	mtctr r12
/* 80615E44  4E 80 04 21 */	bctrl 
/* 80615E48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80615E4C  7C 08 03 A6 */	mtlr r0
/* 80615E50  38 21 00 20 */	addi r1, r1, 0x20
/* 80615E54  4E 80 00 20 */	blr 