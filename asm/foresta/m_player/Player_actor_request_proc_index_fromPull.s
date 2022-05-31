lbl_804EAD88:
/* 804EAD88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EAD8C  7C 08 02 A6 */	mflr r0
/* 804EAD90  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EAD94  39 61 00 20 */	addi r11, r1, 0x20
/* 804EAD98  4B BB 01 3D */	bl func_8009AED4
/* 804EAD9C  2C 05 00 00 */	cmpwi r5, 0
/* 804EADA0  7C 7D 1B 78 */	mr r29, r3
/* 804EADA4  7C 9E 23 78 */	mr r30, r4
/* 804EADA8  41 82 00 38 */	beq lbl_804EADE0
/* 804EADAC  83 FD 0D 18 */	lwz r31, 0xd18(r29)
/* 804EADB0  A8 7D 00 36 */	lha r3, 0x36(r29)
/* 804EADB4  4B FE C4 99 */	bl Player_actor_Get_Index_fromAngle
/* 804EADB8  3C 80 80 65 */	lis r4, lit_8374@ha /* 0x80648494@ha */
/* 804EADBC  7C 60 1B 78 */	mr r0, r3
/* 804EADC0  C0 24 84 94 */	lfs f1, lit_8374@l(r4)  /* 0x80648494@l */
/* 804EADC4  7F C3 F3 78 */	mr r3, r30
/* 804EADC8  7C 05 03 78 */	mr r5, r0
/* 804EADCC  7F E4 FB 78 */	mr r4, r31
/* 804EADD0  38 DD 00 28 */	addi r6, r29, 0x28
/* 804EADD4  38 E0 00 01 */	li r7, 1
/* 804EADD8  39 00 00 16 */	li r8, 0x16
/* 804EADDC  4B FF F0 DD */	bl Player_actor_request_main_hold
lbl_804EADE0:
/* 804EADE0  39 61 00 20 */	addi r11, r1, 0x20
/* 804EADE4  4B BB 01 3D */	bl func_8009AF20
/* 804EADE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EADEC  7C 08 03 A6 */	mtlr r0
/* 804EADF0  38 21 00 20 */	addi r1, r1, 0x20
/* 804EADF4  4E 80 00 20 */	blr 
