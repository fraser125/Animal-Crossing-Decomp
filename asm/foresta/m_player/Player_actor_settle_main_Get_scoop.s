lbl_804FA0A0:
/* 804FA0A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA0A4  7C 08 02 A6 */	mflr r0
/* 804FA0A8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804FA0AC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804FA0B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA0B4  3C 84 00 02 */	addis r4, r4, 2
/* 804FA0B8  80 C4 60 80 */	lwz r6, 0x6080(r4)
/* 804FA0BC  28 06 00 00 */	cmplwi r6, 0
/* 804FA0C0  41 82 00 3C */	beq lbl_804FA0FC
/* 804FA0C4  38 A3 0D 18 */	addi r5, r3, 0xd18
/* 804FA0C8  38 83 10 5C */	addi r4, r3, 0x105c
/* 804FA0CC  80 03 0D 2C */	lwz r0, 0xd2c(r3)
/* 804FA0D0  A0 63 0D 24 */	lhz r3, 0xd24(r3)
/* 804FA0D4  2C 00 00 00 */	cmpwi r0, 0
/* 804FA0D8  40 82 00 24 */	bne lbl_804FA0FC
/* 804FA0DC  80 05 00 20 */	lwz r0, 0x20(r5)
/* 804FA0E0  2C 00 00 00 */	cmpwi r0, 0
/* 804FA0E4  40 82 00 18 */	bne lbl_804FA0FC
/* 804FA0E8  28 03 00 00 */	cmplwi r3, 0
/* 804FA0EC  41 82 00 10 */	beq lbl_804FA0FC
/* 804FA0F0  81 86 00 40 */	lwz r12, 0x40(r6)
/* 804FA0F4  7D 89 03 A6 */	mtctr r12
/* 804FA0F8  4E 80 04 21 */	bctrl 
lbl_804FA0FC:
/* 804FA0FC  38 60 00 28 */	li r3, 0x28
/* 804FA100  38 80 01 68 */	li r4, 0x168
/* 804FA104  4B E8 21 2D */	bl mBGMPsComp_delete_ps_fanfare
/* 804FA108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA10C  7C 08 03 A6 */	mtlr r0
/* 804FA110  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA114  4E 80 00 20 */	blr 
