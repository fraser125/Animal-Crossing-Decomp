lbl_803DB790:
/* 803DB790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB794  7C 08 02 A6 */	mflr r0
/* 803DB798  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB79C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB7A0  7C 7F 1B 78 */	mr r31, r3
/* 803DB7A4  4B FF DE 9D */	bl get_player_actor_withoutCheck
/* 803DB7A8  81 83 12 FC */	lwz r12, 0x12fc(r3)
/* 803DB7AC  7F E3 FB 78 */	mr r3, r31
/* 803DB7B0  38 80 00 11 */	li r4, 0x11
/* 803DB7B4  7D 89 03 A6 */	mtctr r12
/* 803DB7B8  4E 80 04 21 */	bctrl 
/* 803DB7BC  7C 03 00 D0 */	neg r0, r3
/* 803DB7C0  7C 00 18 78 */	andc r0, r0, r3
/* 803DB7C4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803DB7C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB7CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB7D0  7C 08 03 A6 */	mtlr r0
/* 803DB7D4  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB7D8  4E 80 00 20 */	blr 
