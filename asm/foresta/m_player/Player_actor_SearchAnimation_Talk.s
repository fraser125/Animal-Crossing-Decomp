lbl_804FABF4:
/* 804FABF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FABF8  7C 08 02 A6 */	mflr r0
/* 804FABFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FAC00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FAC04  7C 7F 1B 78 */	mr r31, r3
/* 804FAC08  4B FD C8 D5 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804FAC0C  2C 03 00 00 */	cmpwi r3, 0
/* 804FAC10  40 82 00 10 */	bne lbl_804FAC20
/* 804FAC14  7F E3 FB 78 */	mr r3, r31
/* 804FAC18  38 9F 0D 20 */	addi r4, r31, 0xd20
/* 804FAC1C  4B FF FF 85 */	bl Player_actor_Set_FeelEffect_common
lbl_804FAC20:
/* 804FAC20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FAC24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FAC28  7C 08 03 A6 */	mtlr r0
/* 804FAC2C  38 21 00 10 */	addi r1, r1, 0x10
/* 804FAC30  4E 80 00 20 */	blr 
