lbl_80403E54:
/* 80403E54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80403E58  7C 08 02 A6 */	mflr r0
/* 80403E5C  3C 60 81 1C */	lis r3, mVib_info@ha /* 0x811C51D0@ha */
/* 80403E60  38 80 01 20 */	li r4, 0x120
/* 80403E64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80403E68  38 63 51 D0 */	addi r3, r3, mVib_info@l /* 0x811C51D0@l */
/* 80403E6C  4B C5 91 FD */	bl bzero
/* 80403E70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80403E74  7C 08 03 A6 */	mtlr r0
/* 80403E78  38 21 00 10 */	addi r1, r1, 0x10
/* 80403E7C  4E 80 00 20 */	blr 
