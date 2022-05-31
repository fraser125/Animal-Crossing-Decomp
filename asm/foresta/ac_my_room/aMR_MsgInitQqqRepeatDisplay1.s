lbl_8047636C:
/* 8047636C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80476370  7C 08 02 A6 */	mflr r0
/* 80476374  90 01 00 34 */	stw r0, 0x34(r1)
/* 80476378  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8047637C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80476380  7C 7E 1B 78 */	mr r30, r3
/* 80476384  4B F0 D1 BD */	bl func_80383540
/* 80476388  7C 7F 1B 78 */	mr r31, r3
/* 8047638C  4B F0 D2 E9 */	bl mChoice_check_main_index
/* 80476390  2C 03 00 00 */	cmpwi r3, 0
/* 80476394  41 82 00 08 */	beq lbl_8047639C
/* 80476398  48 00 00 88 */	b lbl_80476420
lbl_8047639C:
/* 8047639C  3C 80 81 1D */	lis r4, cancel_string_2082@ha /* 0x811CE6A8@ha */
/* 804763A0  7F E3 FB 78 */	mr r3, r31
/* 804763A4  38 84 E6 A8 */	addi r4, r4, cancel_string_2082@l /* 0x811CE6A8@l */
/* 804763A8  38 A0 01 AB */	li r5, 0x1ab
/* 804763AC  38 C0 00 00 */	li r6, 0
/* 804763B0  4B F0 E0 11 */	bl mChoice_Load_ChoseStringFromRom
/* 804763B4  3C 80 81 1D */	lis r4, else_string_2083@ha /* 0x811CE6B8@ha */
/* 804763B8  7F E3 FB 78 */	mr r3, r31
/* 804763BC  38 84 E6 B8 */	addi r4, r4, else_string_2083@l /* 0x811CE6B8@l */
/* 804763C0  38 A0 02 35 */	li r5, 0x235
/* 804763C4  38 C0 00 00 */	li r6, 0
/* 804763C8  4B F0 DF F9 */	bl mChoice_Load_ChoseStringFromRom
/* 804763CC  80 9E 04 9C */	lwz r4, 0x49c(r30)
/* 804763D0  7F C3 F3 78 */	mr r3, r30
/* 804763D4  4B FF DC ED */	bl aMR_GetNameString
/* 804763D8  39 40 00 10 */	li r10, 0x10
/* 804763DC  7C 64 1B 78 */	mr r4, r3
/* 804763E0  91 41 00 08 */	stw r10, 8(r1)
/* 804763E4  38 00 00 00 */	li r0, 0
/* 804763E8  3C A0 81 1D */	lis r5, else_string_2083@ha /* 0x811CE6B8@ha */
/* 804763EC  3C 60 81 1D */	lis r3, cancel_string_2082@ha /* 0x811CE6A8@ha */
/* 804763F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804763F4  38 C5 E6 B8 */	addi r6, r5, else_string_2083@l /* 0x811CE6B8@l */
/* 804763F8  39 03 E6 A8 */	addi r8, r3, cancel_string_2082@l /* 0x811CE6A8@l */
/* 804763FC  7F E3 FB 78 */	mr r3, r31
/* 80476400  91 41 00 10 */	stw r10, 0x10(r1)
/* 80476404  38 A0 00 10 */	li r5, 0x10
/* 80476408  38 E0 00 10 */	li r7, 0x10
/* 8047640C  39 20 00 10 */	li r9, 0x10
/* 80476410  90 01 00 14 */	stw r0, 0x14(r1)
/* 80476414  91 41 00 18 */	stw r10, 0x18(r1)
/* 80476418  39 40 00 00 */	li r10, 0
/* 8047641C  4B F0 D3 49 */	bl mChoice_Set_choice_data
lbl_80476420:
/* 80476420  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80476424  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80476428  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8047642C  7C 08 03 A6 */	mtlr r0
/* 80476430  38 21 00 30 */	addi r1, r1, 0x30
/* 80476434  4E 80 00 20 */	blr 
