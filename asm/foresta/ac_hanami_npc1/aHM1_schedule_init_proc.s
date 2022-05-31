lbl_8052A810:
/* 8052A810  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052A814  7C 08 02 A6 */	mflr r0
/* 8052A818  3C A0 80 53 */	lis r5, aHM1_think_proc@ha /* 0x8052A7DC@ha */
/* 8052A81C  38 C0 00 00 */	li r6, 0
/* 8052A820  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052A824  38 05 A7 DC */	addi r0, r5, aHM1_think_proc@l /* 0x8052A7DC@l */
/* 8052A828  38 A0 FF FF */	li r5, -1
/* 8052A82C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052A830  7C 9F 23 78 */	mr r31, r4
/* 8052A834  93 C1 00 08 */	stw r30, 8(r1)
/* 8052A838  7C 7E 1B 78 */	mr r30, r3
/* 8052A83C  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 8052A840  38 60 00 03 */	li r3, 3
/* 8052A844  38 00 00 FE */	li r0, 0xfe
/* 8052A848  98 DE 08 31 */	stb r6, 0x831(r30)
/* 8052A84C  90 BE 08 F4 */	stw r5, 0x8f4(r30)
/* 8052A850  90 BE 09 98 */	stw r5, 0x998(r30)
/* 8052A854  90 7E 08 40 */	stw r3, 0x840(r30)
/* 8052A858  98 1E 00 D6 */	stb r0, 0xd6(r30)
/* 8052A85C  4B E7 BA 4D */	bl mFI_GetPuleIdx
/* 8052A860  3C 80 80 6A */	lis r4, def_angle@ha /* 0x806A1294@ha */
/* 8052A864  54 60 08 3C */	slwi r0, r3, 1
/* 8052A868  38 84 12 94 */	addi r4, r4, def_angle@l /* 0x806A1294@l */
/* 8052A86C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8052A870  7C 04 02 AE */	lhax r0, r4, r0
/* 8052A874  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8052A878  3C E3 00 02 */	addis r7, r3, 2
/* 8052A87C  7F C3 F3 78 */	mr r3, r30
/* 8052A880  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 8052A884  7F E4 FB 78 */	mr r4, r31
/* 8052A888  38 A0 00 09 */	li r5, 9
/* 8052A88C  38 C0 00 00 */	li r6, 0
/* 8052A890  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 8052A894  B0 1E 09 24 */	sth r0, 0x924(r30)
/* 8052A898  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8052A89C  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8052A8A0  7D 89 03 A6 */	mtctr r12
/* 8052A8A4  4E 80 04 21 */	bctrl 
/* 8052A8A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052A8AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052A8B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052A8B4  7C 08 03 A6 */	mtlr r0
/* 8052A8B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8052A8BC  4E 80 00 20 */	blr 
