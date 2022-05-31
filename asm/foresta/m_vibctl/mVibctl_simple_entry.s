lbl_80403F6C:
/* 80403F6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80403F70  7C 08 02 A6 */	mflr r0
/* 80403F74  7C A8 2B 78 */	mr r8, r5
/* 80403F78  7C 85 23 78 */	mr r5, r4
/* 80403F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80403F80  3D 60 81 1C */	lis r11, mVib_info@ha /* 0x811C51D0@ha */
/* 80403F84  7C C9 33 78 */	mr r9, r6
/* 80403F88  7C EA 3B 78 */	mr r10, r7
/* 80403F8C  7C 64 1B 78 */	mr r4, r3
/* 80403F90  38 6B 51 D0 */	addi r3, r11, mVib_info@l /* 0x811C51D0@l */
/* 80403F94  7C A6 2B 78 */	mr r6, r5
/* 80403F98  7C A7 2B 78 */	mr r7, r5
/* 80403F9C  4B FF F9 7D */	bl mVibInfo_elem_entry
/* 80403FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80403FA4  7C 08 03 A6 */	mtlr r0
/* 80403FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80403FAC  4E 80 00 20 */	blr 
