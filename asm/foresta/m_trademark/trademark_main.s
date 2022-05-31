lbl_8062BCE8:
/* 8062BCE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062BCEC  7C 08 02 A6 */	mflr r0
/* 8062BCF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062BCF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062BCF8  7C 7F 1B 78 */	mr r31, r3
/* 8062BCFC  93 C1 00 08 */	stw r30, 8(r1)
/* 8062BD00  4B A3 0F F5 */	bl fqrand
/* 8062BD04  7F E3 FB 78 */	mr r3, r31
/* 8062BD08  4B FF FD AD */	bl trademark_cancel
/* 8062BD0C  7F E3 FB 78 */	mr r3, r31
/* 8062BD10  4B FF FE 01 */	bl trademark_move
/* 8062BD14  7F E3 FB 78 */	mr r3, r31
/* 8062BD18  4B FF FF 1D */	bl trademark_draw
/* 8062BD1C  83 DF 00 00 */	lwz r30, 0(r31)
/* 8062BD20  7F E3 FB 78 */	mr r3, r31
/* 8062BD24  7F C4 F3 78 */	mr r4, r30
/* 8062BD28  4B DD 8E CD */	bl game_debug_draw_last
/* 8062BD2C  7F C3 F3 78 */	mr r3, r30
/* 8062BD30  4B DD 90 49 */	bl game_draw_last
/* 8062BD34  3C 9F 00 02 */	addis r4, r31, 2
/* 8062BD38  88 04 5A 66 */	lbz r0, 0x5a66(r4)
/* 8062BD3C  28 00 00 05 */	cmplwi r0, 5
/* 8062BD40  40 82 00 20 */	bne lbl_8062BD60
/* 8062BD44  38 00 00 00 */	li r0, 0
/* 8062BD48  7F E3 FB 78 */	mr r3, r31
/* 8062BD4C  98 04 5A 66 */	stb r0, 0x5a66(r4)
/* 8062BD50  4B FF FA ED */	bl trademark_goto_demo_scene
/* 8062BD54  3C 60 80 6D */	lis r3, data_806D4858@ha /* 0x806D4858@ha */
/* 8062BD58  38 00 00 00 */	li r0, 0
/* 8062BD5C  90 03 48 58 */	stw r0, data_806D4858@l(r3)  /* 0x806D4858@l */
lbl_8062BD60:
/* 8062BD60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062BD64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062BD68  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062BD6C  7C 08 03 A6 */	mtlr r0
/* 8062BD70  38 21 00 10 */	addi r1, r1, 0x10
/* 8062BD74  4E 80 00 20 */	blr 
