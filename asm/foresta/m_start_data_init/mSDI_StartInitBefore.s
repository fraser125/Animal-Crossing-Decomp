lbl_803EEB64:
/* 803EEB64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EEB68  7C 08 02 A6 */	mflr r0
/* 803EEB6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EEB70  39 61 00 20 */	addi r11, r1, 0x20
/* 803EEB74  4B CA C3 5D */	bl func_8009AED0
/* 803EEB78  7C 7C 1B 78 */	mr r28, r3
/* 803EEB7C  7C 9D 23 78 */	mr r29, r4
/* 803EEB80  7C BE 2B 78 */	mr r30, r5
/* 803EEB84  7C DF 33 78 */	mr r31, r6
/* 803EEB88  4B FA C2 ED */	bl mEv_UnSetGateway
/* 803EEB8C  3C 60 80 66 */	lis r3, init_proc@ha /* 0x8065DCA4@ha */
/* 803EEB90  57 C0 10 3A */	slwi r0, r30, 2
/* 803EEB94  38 83 DC A4 */	addi r4, r3, init_proc@l /* 0x8065DCA4@l */
/* 803EEB98  7F 83 E3 78 */	mr r3, r28
/* 803EEB9C  7D 84 00 2E */	lwzx r12, r4, r0
/* 803EEBA0  7F A4 EB 78 */	mr r4, r29
/* 803EEBA4  7F E5 FB 78 */	mr r5, r31
/* 803EEBA8  7D 89 03 A6 */	mtctr r12
/* 803EEBAC  4E 80 04 21 */	bctrl 
/* 803EEBB0  39 61 00 20 */	addi r11, r1, 0x20
/* 803EEBB4  4B CA C3 69 */	bl func_8009AF1C
/* 803EEBB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EEBBC  7C 08 03 A6 */	mtlr r0
/* 803EEBC0  38 21 00 20 */	addi r1, r1, 0x20
/* 803EEBC4  4E 80 00 20 */	blr 
