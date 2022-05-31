lbl_8053E7F0:
/* 8053E7F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8053E7F4  7C 08 02 A6 */	mflr r0
/* 8053E7F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8053E7FC  39 61 00 40 */	addi r11, r1, 0x40
/* 8053E800  4B B5 C6 CD */	bl func_8009AECC
/* 8053E804  7C 7B 1B 78 */	mr r27, r3
/* 8053E808  7C 9C 23 78 */	mr r28, r4
/* 8053E80C  7C BD 2B 78 */	mr r29, r5
/* 8053E810  7C DE 33 78 */	mr r30, r6
/* 8053E814  7C FF 3B 78 */	mr r31, r7
/* 8053E818  38 61 00 14 */	addi r3, r1, 0x14
/* 8053E81C  4B EC EC A1 */	bl Matrix_Position_Zero
/* 8053E820  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8053E824  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 8053E828  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8053E82C  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8053E830  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8053E834  3C 83 00 02 */	addis r4, r3, 2
/* 8053E838  90 C1 00 08 */	stw r6, 8(r1)
/* 8053E83C  7F A3 EB 78 */	mr r3, r29
/* 8053E840  80 C4 60 9C */	lwz r6, 0x609c(r4)
/* 8053E844  7F 67 DB 78 */	mr r7, r27
/* 8053E848  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8053E84C  7F C9 F3 78 */	mr r9, r30
/* 8053E850  7F EA FB 78 */	mr r10, r31
/* 8053E854  38 81 00 08 */	addi r4, r1, 8
/* 8053E858  90 01 00 10 */	stw r0, 0x10(r1)
/* 8053E85C  38 A0 00 01 */	li r5, 1
/* 8053E860  81 86 00 00 */	lwz r12, 0(r6)
/* 8053E864  A8 DC 00 DE */	lha r6, 0xde(r28)
/* 8053E868  A1 1C 00 06 */	lhz r8, 6(r28)
/* 8053E86C  7D 89 03 A6 */	mtctr r12
/* 8053E870  4E 80 04 21 */	bctrl 
/* 8053E874  39 61 00 40 */	addi r11, r1, 0x40
/* 8053E878  4B B5 C6 A1 */	bl func_8009AF18
/* 8053E87C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8053E880  7C 08 03 A6 */	mtlr r0
/* 8053E884  38 21 00 40 */	addi r1, r1, 0x40
/* 8053E888  4E 80 00 20 */	blr 
