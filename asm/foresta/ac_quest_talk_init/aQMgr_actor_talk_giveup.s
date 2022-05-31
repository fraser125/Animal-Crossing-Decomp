lbl_8048C9D8:
/* 8048C9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C9DC  7C 08 02 A6 */	mflr r0
/* 8048C9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C9E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048C9E8  7C 7F 1B 78 */	mr r31, r3
/* 8048C9EC  80 03 01 DC */	lwz r0, 0x1dc(r3)
/* 8048C9F0  2C 00 FF FF */	cmpwi r0, -1
/* 8048C9F4  41 82 00 14 */	beq lbl_8048CA08
/* 8048C9F8  38 60 00 03 */	li r3, 3
/* 8048C9FC  38 00 00 0A */	li r0, 0xa
/* 8048CA00  98 7F 01 85 */	stb r3, 0x185(r31)
/* 8048CA04  98 1F 01 86 */	stb r0, 0x186(r31)
lbl_8048CA08:
/* 8048CA08  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048CA0C  7F E3 FB 78 */	mr r3, r31
/* 8048CA10  38 80 00 02 */	li r4, 2
/* 8048CA14  7D 89 03 A6 */	mtctr r12
/* 8048CA18  4E 80 04 21 */	bctrl 
/* 8048CA1C  4B F3 2C 8D */	bl func_803BF6A8
/* 8048CA20  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048CA24  4B F3 35 A1 */	bl mMsg_Set_continue_msg_num
/* 8048CA28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048CA2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048CA30  7C 08 03 A6 */	mtlr r0
/* 8048CA34  38 21 00 10 */	addi r1, r1, 0x10
/* 8048CA38  4E 80 00 20 */	blr 
