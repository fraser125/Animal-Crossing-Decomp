lbl_8052C618:
/* 8052C618  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052C61C  7C 08 02 A6 */	mflr r0
/* 8052C620  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052C624  39 61 00 20 */	addi r11, r1, 0x20
/* 8052C628  4B B6 E8 A5 */	bl func_8009AECC
/* 8052C62C  7C 7F 1B 78 */	mr r31, r3
/* 8052C630  3C 60 81 1D */	lis r3, data_811D3978@ha /* 0x811D3978@ha */
/* 8052C634  83 BF 19 28 */	lwz r29, 0x1928(r31)
/* 8052C638  38 63 39 78 */	addi r3, r3, data_811D3978@l /* 0x811D3978@l */
/* 8052C63C  80 63 00 00 */	lwz r3, 0(r3)
/* 8052C640  3B 60 00 00 */	li r27, 0
/* 8052C644  1C 1D 00 5C */	mulli r0, r29, 0x5c
/* 8052C648  3B C3 01 74 */	addi r30, r3, 0x174
/* 8052C64C  7F 9F 02 14 */	add r28, r31, r0
lbl_8052C650:
/* 8052C650  7F E3 FB 78 */	mr r3, r31
/* 8052C654  38 80 00 00 */	li r4, 0
/* 8052C658  38 A0 02 20 */	li r5, 0x220
/* 8052C65C  4B EC 3F A5 */	bl mSc_secure_exchange_keep_bank
/* 8052C660  28 03 00 00 */	cmplwi r3, 0
/* 8052C664  41 82 00 48 */	beq lbl_8052C6AC
/* 8052C668  38 60 02 00 */	li r3, 0x200
/* 8052C66C  38 00 00 20 */	li r0, 0x20
/* 8052C670  90 7E 00 18 */	stw r3, 0x18(r30)
/* 8052C674  80 7C 00 04 */	lwz r3, 4(r28)
/* 8052C678  90 7E 00 0C */	stw r3, 0xc(r30)
/* 8052C67C  80 7C 00 04 */	lwz r3, 4(r28)
/* 8052C680  90 7E 00 10 */	stw r3, 0x10(r30)
/* 8052C684  90 1E 00 74 */	stw r0, 0x74(r30)
/* 8052C688  80 7C 00 04 */	lwz r3, 4(r28)
/* 8052C68C  3B 9C 00 5C */	addi r28, r28, 0x5c
/* 8052C690  38 03 02 00 */	addi r0, r3, 0x200
/* 8052C694  90 1E 00 68 */	stw r0, 0x68(r30)
/* 8052C698  80 1E 00 68 */	lwz r0, 0x68(r30)
/* 8052C69C  90 1E 00 6C */	stw r0, 0x6c(r30)
/* 8052C6A0  9B BE 00 07 */	stb r29, 7(r30)
/* 8052C6A4  3B BD 00 01 */	addi r29, r29, 1
/* 8052C6A8  48 00 00 18 */	b lbl_8052C6C0
lbl_8052C6AC:
/* 8052C6AC  38 60 00 00 */	li r3, 0
/* 8052C6B0  38 00 00 FF */	li r0, 0xff
/* 8052C6B4  90 7E 00 0C */	stw r3, 0xc(r30)
/* 8052C6B8  90 7E 00 68 */	stw r3, 0x68(r30)
/* 8052C6BC  98 1E 00 07 */	stb r0, 7(r30)
lbl_8052C6C0:
/* 8052C6C0  38 60 00 00 */	li r3, 0
/* 8052C6C4  3B 7B 00 01 */	addi r27, r27, 1
/* 8052C6C8  B0 7E 00 04 */	sth r3, 4(r30)
/* 8052C6CC  38 00 FF FF */	li r0, -1
/* 8052C6D0  2C 1B 00 0A */	cmpwi r27, 0xa
/* 8052C6D4  B0 1E 00 08 */	sth r0, 8(r30)
/* 8052C6D8  B0 1E 00 64 */	sth r0, 0x64(r30)
/* 8052C6DC  98 7E 00 06 */	stb r3, 6(r30)
/* 8052C6E0  98 7E 00 00 */	stb r3, 0(r30)
/* 8052C6E4  3B DE 00 C0 */	addi r30, r30, 0xc0
/* 8052C6E8  41 80 FF 68 */	blt lbl_8052C650
/* 8052C6EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8052C6F0  4B B6 E8 29 */	bl func_8009AF18
/* 8052C6F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052C6F8  7C 08 03 A6 */	mtlr r0
/* 8052C6FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8052C700  4E 80 00 20 */	blr 
