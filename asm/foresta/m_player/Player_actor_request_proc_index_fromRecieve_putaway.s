lbl_804FBAF4:
/* 804FBAF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FBAF8  7C 08 02 A6 */	mflr r0
/* 804FBAFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FBB00  39 61 00 20 */	addi r11, r1, 0x20
/* 804FBB04  4B B9 F3 D1 */	bl func_8009AED4
/* 804FBB08  2C 05 00 00 */	cmpwi r5, 0
/* 804FBB0C  7C 7D 1B 78 */	mr r29, r3
/* 804FBB10  7C 9E 23 78 */	mr r30, r4
/* 804FBB14  41 82 00 4C */	beq lbl_804FBB60
/* 804FBB18  83 FD 0D 20 */	lwz r31, 0xd20(r29)
/* 804FBB1C  4B FD 98 51 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804FBB20  2C 1F 00 41 */	cmpwi r31, 0x41
/* 804FBB24  41 82 00 1C */	beq lbl_804FBB40
/* 804FBB28  7F C3 F3 78 */	mr r3, r30
/* 804FBB2C  38 80 00 00 */	li r4, 0
/* 804FBB30  38 A0 00 00 */	li r5, 0
/* 804FBB34  38 C0 00 13 */	li r6, 0x13
/* 804FBB38  48 00 12 09 */	bl func_804FCD40
/* 804FBB3C  48 00 00 24 */	b lbl_804FBB60
lbl_804FBB40:
/* 804FBB40  3C 60 80 65 */	lis r3, lit_8374@ha /* 0x80648494@ha */
/* 804FBB44  80 9D 0D 18 */	lwz r4, 0xd18(r29)
/* 804FBB48  C0 23 84 94 */	lfs f1, lit_8374@l(r3)  /* 0x80648494@l */
/* 804FBB4C  7F C3 F3 78 */	mr r3, r30
/* 804FBB50  80 BD 0D 1C */	lwz r5, 0xd1c(r29)
/* 804FBB54  38 C0 00 00 */	li r6, 0
/* 804FBB58  38 E0 00 13 */	li r7, 0x13
/* 804FBB5C  4B FF ED 41 */	bl func_804FA89C
lbl_804FBB60:
/* 804FBB60  39 61 00 20 */	addi r11, r1, 0x20
/* 804FBB64  4B B9 F3 BD */	bl func_8009AF20
/* 804FBB68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FBB6C  7C 08 03 A6 */	mtlr r0
/* 804FBB70  38 21 00 20 */	addi r1, r1, 0x20
/* 804FBB74  4E 80 00 20 */	blr 
