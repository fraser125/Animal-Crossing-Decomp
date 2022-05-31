lbl_804FABA0:
/* 804FABA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FABA4  7C 08 02 A6 */	mflr r0
/* 804FABA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FABAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FABB0  7C 7F 1B 78 */	mr r31, r3
/* 804FABB4  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 804FABB8  2C 00 00 6E */	cmpwi r0, 0x6e
/* 804FABBC  40 82 00 24 */	bne lbl_804FABE0
/* 804FABC0  3C 80 80 64 */	lis r4, lit_6257@ha /* 0x80647E60@ha */
/* 804FABC4  38 7F 01 74 */	addi r3, r31, 0x174
/* 804FABC8  C0 24 7E 60 */	lfs f1, lit_6257@l(r4)  /* 0x80647E60@l */
/* 804FABCC  4B FD CA 35 */	bl Player_actor_Check_AnimationFrame
/* 804FABD0  2C 03 00 00 */	cmpwi r3, 0
/* 804FABD4  41 82 00 0C */	beq lbl_804FABE0
/* 804FABD8  38 00 00 01 */	li r0, 1
/* 804FABDC  90 1F 11 0C */	stw r0, 0x110c(r31)
lbl_804FABE0:
/* 804FABE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FABE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FABE8  7C 08 03 A6 */	mtlr r0
/* 804FABEC  38 21 00 10 */	addi r1, r1, 0x10
/* 804FABF0  4E 80 00 20 */	blr 
