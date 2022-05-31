lbl_804FFA6C:
/* 804FFA6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FFA70  7C 08 02 A6 */	mflr r0
/* 804FFA74  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FFA78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FFA7C  7C 7F 1B 78 */	mr r31, r3
/* 804FFA80  4B FD 7A 5D */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804FFA84  2C 03 00 00 */	cmpwi r3, 0
/* 804FFA88  40 82 00 1C */	bne lbl_804FFAA4
/* 804FFA8C  80 1F 0D 1C */	lwz r0, 0xd1c(r31)
/* 804FFA90  2C 00 00 00 */	cmpwi r0, 0
/* 804FFA94  40 82 00 38 */	bne lbl_804FFACC
/* 804FFA98  38 00 00 01 */	li r0, 1
/* 804FFA9C  90 1F 0D 3C */	stw r0, 0xd3c(r31)
/* 804FFAA0  48 00 00 2C */	b lbl_804FFACC
lbl_804FFAA4:
/* 804FFAA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804FFAA8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 804FFAAC  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 804FFAB0  38 60 00 1E */	li r3, 0x1e
/* 804FFAB4  3C A4 00 02 */	addis r5, r4, 2
/* 804FFAB8  38 86 FF FF */	addi r4, r6, 0xFFFF /* 0x0000FFFF@l */
/* 804FFABC  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 804FFAC0  81 85 00 04 */	lwz r12, 4(r5)
/* 804FFAC4  7D 89 03 A6 */	mtctr r12
/* 804FFAC8  4E 80 04 21 */	bctrl 
lbl_804FFACC:
/* 804FFACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FFAD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FFAD4  7C 08 03 A6 */	mtlr r0
/* 804FFAD8  38 21 00 10 */	addi r1, r1, 0x10
/* 804FFADC  4E 80 00 20 */	blr 
