lbl_8053FBE8:
/* 8053FBE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053FBEC  7C 08 02 A6 */	mflr r0
/* 8053FBF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053FBF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053FBF8  7C 7F 1B 78 */	mr r31, r3
/* 8053FBFC  81 83 09 6C */	lwz r12, 0x96c(r3)
/* 8053FC00  7D 89 03 A6 */	mtctr r12
/* 8053FC04  4E 80 04 21 */	bctrl 
/* 8053FC08  2C 03 00 01 */	cmpwi r3, 1
/* 8053FC0C  40 82 00 18 */	bne lbl_8053FC24
/* 8053FC10  7F E3 FB 78 */	mr r3, r31
/* 8053FC14  4B FF D7 61 */	bl aNPC_setup_talk_end
/* 8053FC18  38 00 00 FF */	li r0, 0xff
/* 8053FC1C  98 1F 07 F6 */	stb r0, 0x7f6(r31)
/* 8053FC20  48 00 00 0C */	b lbl_8053FC2C
lbl_8053FC24:
/* 8053FC24  7F E3 FB 78 */	mr r3, r31
/* 8053FC28  4B FF FD 95 */	bl aNPC_talk_demo_proc
lbl_8053FC2C:
/* 8053FC2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053FC30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053FC34  7C 08 03 A6 */	mtlr r0
/* 8053FC38  38 21 00 10 */	addi r1, r1, 0x10
/* 8053FC3C  4E 80 00 20 */	blr 
