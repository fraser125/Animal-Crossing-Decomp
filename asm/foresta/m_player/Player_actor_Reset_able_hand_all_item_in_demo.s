lbl_804DB450:
/* 804DB450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DB454  7C 08 02 A6 */	mflr r0
/* 804DB458  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB45C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DB460  7C 7F 1B 78 */	mr r31, r3
/* 804DB464  7C 83 23 78 */	mr r3, r4
/* 804DB468  4B FF CD 55 */	bl Player_actor_Check_is_demo_mode
/* 804DB46C  2C 03 00 00 */	cmpwi r3, 0
/* 804DB470  40 82 00 0C */	bne lbl_804DB47C
/* 804DB474  38 00 00 00 */	li r0, 0
/* 804DB478  98 1F 0E 6D */	stb r0, 0xe6d(r31)
lbl_804DB47C:
/* 804DB47C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB480  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DB484  7C 08 03 A6 */	mtlr r0
/* 804DB488  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB48C  4E 80 00 20 */	blr 
