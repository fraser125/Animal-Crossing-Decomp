lbl_804EBFC4:
/* 804EBFC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EBFC8  7C 08 02 A6 */	mflr r0
/* 804EBFCC  3C 80 80 64 */	lis r4, lit_2591@ha /* 0x80646C44@ha */
/* 804EBFD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EBFD4  C0 24 6C 44 */	lfs f1, lit_2591@l(r4)  /* 0x80646C44@l */
/* 804EBFD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EBFDC  7C 7F 1B 78 */	mr r31, r3
/* 804EBFE0  38 7F 01 74 */	addi r3, r31, 0x174
/* 804EBFE4  4B FE B6 1D */	bl Player_actor_Check_AnimationFrame
/* 804EBFE8  2C 03 00 00 */	cmpwi r3, 0
/* 804EBFEC  41 82 00 0C */	beq lbl_804EBFF8
/* 804EBFF0  7F E3 FB 78 */	mr r3, r31
/* 804EBFF4  4B FF 36 8D */	bl Player_actor_sound_BED_IN
lbl_804EBFF8:
/* 804EBFF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EBFFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EC000  7C 08 03 A6 */	mtlr r0
/* 804EC004  38 21 00 10 */	addi r1, r1, 0x10
/* 804EC008  4E 80 00 20 */	blr 
