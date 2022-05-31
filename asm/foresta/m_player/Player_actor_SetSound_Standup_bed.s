lbl_804ECFC0:
/* 804ECFC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ECFC4  7C 08 02 A6 */	mflr r0
/* 804ECFC8  3C 80 80 65 */	lis r4, lit_9496@ha /* 0x806484CC@ha */
/* 804ECFCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ECFD0  C0 24 84 CC */	lfs f1, lit_9496@l(r4)  /* 0x806484CC@l */
/* 804ECFD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804ECFD8  7C 7F 1B 78 */	mr r31, r3
/* 804ECFDC  38 7F 01 74 */	addi r3, r31, 0x174
/* 804ECFE0  4B FE A6 21 */	bl Player_actor_Check_AnimationFrame
/* 804ECFE4  2C 03 00 00 */	cmpwi r3, 0
/* 804ECFE8  41 82 00 0C */	beq lbl_804ECFF4
/* 804ECFEC  7F E3 FB 78 */	mr r3, r31
/* 804ECFF0  4B FF 26 49 */	bl Player_actor_sound_LANDING
lbl_804ECFF4:
/* 804ECFF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ECFF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804ECFFC  7C 08 03 A6 */	mtlr r0
/* 804ED000  38 21 00 10 */	addi r1, r1, 0x10
/* 804ED004  4E 80 00 20 */	blr 
