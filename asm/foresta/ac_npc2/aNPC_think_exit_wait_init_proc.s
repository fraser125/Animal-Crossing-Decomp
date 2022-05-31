lbl_80542E60:
/* 80542E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80542E64  7C 08 02 A6 */	mflr r0
/* 80542E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80542E6C  38 00 00 00 */	li r0, 0
/* 80542E70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80542E74  7C 7F 1B 78 */	mr r31, r3
/* 80542E78  98 03 07 C9 */	stb r0, 0x7c9(r3)
/* 80542E7C  38 00 00 FE */	li r0, 0xfe
/* 80542E80  98 03 00 D6 */	stb r0, 0xd6(r3)
/* 80542E84  4B FF BC 11 */	bl func_8053EA94
/* 80542E88  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80542E8C  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80542E90  4B FF E0 A9 */	bl func_80540F38
/* 80542E94  7F E4 FB 78 */	mr r4, r31
/* 80542E98  38 60 00 07 */	li r3, 7
/* 80542E9C  4B E5 73 C9 */	bl mDemo_Check
/* 80542EA0  2C 03 00 00 */	cmpwi r3, 0
/* 80542EA4  40 82 00 0C */	bne lbl_80542EB0
/* 80542EA8  7F E3 FB 78 */	mr r3, r31
/* 80542EAC  4B FF FD 8D */	bl func_80542C38
lbl_80542EB0:
/* 80542EB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80542EB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80542EB8  7C 08 03 A6 */	mtlr r0
/* 80542EBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80542EC0  4E 80 00 20 */	blr 
