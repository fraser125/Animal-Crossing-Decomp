lbl_80403F24:
/* 80403F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80403F28  7C 08 02 A6 */	mflr r0
/* 80403F2C  7D 2A 4B 78 */	mr r10, r9
/* 80403F30  7D 09 43 78 */	mr r9, r8
/* 80403F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80403F38  7C 80 23 78 */	mr r0, r4
/* 80403F3C  7C E8 3B 78 */	mr r8, r7
/* 80403F40  7C C7 33 78 */	mr r7, r6
/* 80403F44  7C A6 2B 78 */	mr r6, r5
/* 80403F48  3D 60 81 1C */	lis r11, mVib_info@ha /* 0x811C51D0@ha */
/* 80403F4C  7C 64 1B 78 */	mr r4, r3
/* 80403F50  7C 05 03 78 */	mr r5, r0
/* 80403F54  38 6B 51 D0 */	addi r3, r11, mVib_info@l /* 0x811C51D0@l */
/* 80403F58  4B FF F9 C1 */	bl mVibInfo_elem_entry
/* 80403F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80403F60  7C 08 03 A6 */	mtlr r0
/* 80403F64  38 21 00 10 */	addi r1, r1, 0x10
/* 80403F68  4E 80 00 20 */	blr 
