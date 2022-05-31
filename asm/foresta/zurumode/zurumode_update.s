lbl_8040ECC0:
/* 8040ECC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040ECC4  7C 08 02 A6 */	mflr r0
/* 8040ECC8  3C 60 80 20 */	lis r3, osAppNMIBuffer@ha /* 0x80206F60@ha */
/* 8040ECCC  3C 80 81 1D */	lis r4, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 8040ECD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040ECD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040ECD8  3B E3 6F 60 */	addi r31, r3, osAppNMIBuffer@l /* 0x80206F60@l */
/* 8040ECDC  80 BF 00 3C */	lwz r5, 0x3c(r31)
/* 8040ECE0  80 84 B7 A8 */	lwz r4, data_811CB7A8@l(r4)  /* 0x811CB7A8@l */
/* 8040ECE4  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 8040ECE8  41 82 00 10 */	beq lbl_8040ECF8
/* 8040ECEC  54 A3 EF FE */	rlwinm r3, r5, 0x1d, 0x1f, 0x1f
/* 8040ECF0  38 A3 00 01 */	addi r5, r3, 1
/* 8040ECF4  48 00 00 08 */	b lbl_8040ECFC
lbl_8040ECF8:
/* 8040ECF8  38 A0 00 00 */	li r5, 0
lbl_8040ECFC:
/* 8040ECFC  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 8040ED00  7C 04 28 00 */	cmpw r4, r5
/* 8040ED04  90 A3 B7 A8 */	stw r5, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 8040ED08  41 82 00 64 */	beq lbl_8040ED6C
/* 8040ED0C  3C 60 80 66 */	lis r3, data_8065F8F0@ha /* 0x8065F8F0@ha */
/* 8040ED10  38 63 F8 F0 */	addi r3, r3, data_8065F8F0@l /* 0x8065F8F0@l */
/* 8040ED14  4C C6 31 82 */	crclr 6
/* 8040ED18  4B C4 BA 39 */	bl OSReport
/* 8040ED1C  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 8040ED20  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 8040ED24  2C 00 00 00 */	cmpwi r0, 0
/* 8040ED28  41 82 00 30 */	beq lbl_8040ED58
/* 8040ED2C  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 8040ED30  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 8040ED34  40 82 00 0C */	bne lbl_8040ED40
/* 8040ED38  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8040ED3C  41 82 00 30 */	beq lbl_8040ED6C
lbl_8040ED40:
/* 8040ED40  38 60 00 03 */	li r3, 3
/* 8040ED44  4B C5 2E E9 */	bl JC_JUTAssertion_changeDevice
/* 8040ED48  4B C5 23 65 */	bl JC_JUTDbPrint_getManager
/* 8040ED4C  38 80 00 01 */	li r4, 1
/* 8040ED50  4B C5 23 65 */	bl JC_JUTDbPrint_setVisible
/* 8040ED54  48 00 00 18 */	b lbl_8040ED6C
lbl_8040ED58:
/* 8040ED58  38 60 00 02 */	li r3, 2
/* 8040ED5C  4B C5 2E D1 */	bl JC_JUTAssertion_changeDevice
/* 8040ED60  4B C5 23 4D */	bl JC_JUTDbPrint_getManager
/* 8040ED64  38 80 00 00 */	li r4, 0
/* 8040ED68  4B C5 23 4D */	bl JC_JUTDbPrint_setVisible
lbl_8040ED6C:
/* 8040ED6C  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 8040ED70  38 63 B7 A8 */	addi r3, r3, data_811CB7A8@l /* 0x811CB7A8@l */
/* 8040ED74  80 63 00 00 */	lwz r3, 0(r3)
/* 8040ED78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040ED7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040ED80  7C 08 03 A6 */	mtlr r0
/* 8040ED84  38 21 00 10 */	addi r1, r1, 0x10
/* 8040ED88  4E 80 00 20 */	blr 
