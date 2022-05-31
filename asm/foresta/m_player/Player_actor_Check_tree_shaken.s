lbl_804DC844:
/* 804DC844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DC848  7C 08 02 A6 */	mflr r0
/* 804DC84C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DC850  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DC854  7C 9F 23 78 */	mr r31, r4
/* 804DC858  93 C1 00 08 */	stw r30, 8(r1)
/* 804DC85C  7C 7E 1B 78 */	mr r30, r3
/* 804DC860  4B FF FE 45 */	bl Player_actor_Check_tree_shaken_little
/* 804DC864  2C 03 00 00 */	cmpwi r3, 0
/* 804DC868  40 82 00 18 */	bne lbl_804DC880
/* 804DC86C  7F C3 F3 78 */	mr r3, r30
/* 804DC870  7F E4 FB 78 */	mr r4, r31
/* 804DC874  4B FF FF 01 */	bl Player_actor_Check_tree_shaken_big
/* 804DC878  2C 03 00 00 */	cmpwi r3, 0
/* 804DC87C  41 82 00 0C */	beq lbl_804DC888
lbl_804DC880:
/* 804DC880  38 60 00 01 */	li r3, 1
/* 804DC884  48 00 00 08 */	b lbl_804DC88C
lbl_804DC888:
/* 804DC888  38 60 00 00 */	li r3, 0
lbl_804DC88C:
/* 804DC88C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DC890  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DC894  83 C1 00 08 */	lwz r30, 8(r1)
/* 804DC898  7C 08 03 A6 */	mtlr r0
/* 804DC89C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DC8A0  4E 80 00 20 */	blr 
