lbl_803F9888:
/* 803F9888  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803F988C  7C 08 02 A6 */	mflr r0
/* 803F9890  90 01 00 64 */	stw r0, 0x64(r1)
/* 803F9894  39 61 00 60 */	addi r11, r1, 0x60
/* 803F9898  4B CA 16 31 */	bl func_8009AEC8
/* 803F989C  7C 9F 23 78 */	mr r31, r4
/* 803F98A0  7C 7A 1B 78 */	mr r26, r3
/* 803F98A4  7C BB 2B 78 */	mr r27, r5
/* 803F98A8  7C FC 3B 78 */	mr r28, r7
/* 803F98AC  7D 1D 43 78 */	mr r29, r8
/* 803F98B0  7F E3 FB 78 */	mr r3, r31
/* 803F98B4  3B C0 00 00 */	li r30, 0
/* 803F98B8  4B C9 49 B1 */	bl CARDGetResultCode
/* 803F98BC  90 7B 00 00 */	stw r3, 0(r27)
/* 803F98C0  80 1B 00 00 */	lwz r0, 0(r27)
/* 803F98C4  2C 00 00 00 */	cmpwi r0, 0
/* 803F98C8  40 82 00 B4 */	bne lbl_803F997C
/* 803F98CC  7F E3 FB 78 */	mr r3, r31
/* 803F98D0  7F 84 E3 78 */	mr r4, r28
/* 803F98D4  7F 45 D3 78 */	mr r5, r26
/* 803F98D8  4B C9 7B CD */	bl CARDOpen
/* 803F98DC  90 7B 00 00 */	stw r3, 0(r27)
/* 803F98E0  80 1B 00 00 */	lwz r0, 0(r27)
/* 803F98E4  2C 00 00 00 */	cmpwi r0, 0
/* 803F98E8  40 82 00 84 */	bne lbl_803F996C
/* 803F98EC  80 1A 00 04 */	lwz r0, 4(r26)
/* 803F98F0  7F E3 FB 78 */	mr r3, r31
/* 803F98F4  38 A1 00 08 */	addi r5, r1, 8
/* 803F98F8  90 1A 00 14 */	stw r0, 0x14(r26)
/* 803F98FC  80 9A 00 14 */	lwz r4, 0x14(r26)
/* 803F9900  4B C9 92 25 */	bl func_80092B24
/* 803F9904  90 7B 00 00 */	stw r3, 0(r27)
/* 803F9908  80 1B 00 00 */	lwz r0, 0(r27)
/* 803F990C  2C 00 00 00 */	cmpwi r0, 0
/* 803F9910  40 82 00 48 */	bne lbl_803F9958
/* 803F9914  88 01 00 3C */	lbz r0, 0x3c(r1)
/* 803F9918  7F E3 FB 78 */	mr r3, r31
/* 803F991C  38 A1 00 08 */	addi r5, r1, 8
/* 803F9920  7C 00 EB 78 */	or r0, r0, r29
/* 803F9924  98 01 00 3C */	stb r0, 0x3c(r1)
/* 803F9928  80 9A 00 14 */	lwz r4, 0x14(r26)
/* 803F992C  4B C9 95 09 */	bl __CARDSetStatusEx
/* 803F9930  80 1B 00 00 */	lwz r0, 0(r27)
/* 803F9934  2C 00 00 00 */	cmpwi r0, 0
/* 803F9938  40 82 00 18 */	bne lbl_803F9950
/* 803F993C  80 7A 00 18 */	lwz r3, 0x18(r26)
/* 803F9940  3B C0 00 01 */	li r30, 1
/* 803F9944  38 03 00 01 */	addi r0, r3, 1
/* 803F9948  90 1A 00 18 */	stw r0, 0x18(r26)
/* 803F994C  48 00 00 10 */	b lbl_803F995C
lbl_803F9950:
/* 803F9950  3B C0 FF FF */	li r30, -1
/* 803F9954  48 00 00 08 */	b lbl_803F995C
lbl_803F9958:
/* 803F9958  3B C0 FF FF */	li r30, -1
lbl_803F995C:
/* 803F995C  7F 43 D3 78 */	mr r3, r26
/* 803F9960  7F E4 FB 78 */	mr r4, r31
/* 803F9964  4B FF E4 B1 */	bl mCD_close_and_unmount
/* 803F9968  48 00 00 28 */	b lbl_803F9990
lbl_803F996C:
/* 803F996C  7F E3 FB 78 */	mr r3, r31
/* 803F9970  4B C9 6E 71 */	bl CARDUnmount
/* 803F9974  3B C0 FF FF */	li r30, -1
/* 803F9978  48 00 00 18 */	b lbl_803F9990
lbl_803F997C:
/* 803F997C  2C 00 FF FF */	cmpwi r0, -1
/* 803F9980  41 82 00 10 */	beq lbl_803F9990
/* 803F9984  7F E3 FB 78 */	mr r3, r31
/* 803F9988  4B C9 6E 59 */	bl CARDUnmount
/* 803F998C  3B C0 FF FF */	li r30, -1
lbl_803F9990:
/* 803F9990  7F C3 F3 78 */	mr r3, r30
/* 803F9994  39 61 00 60 */	addi r11, r1, 0x60
/* 803F9998  4B CA 15 7D */	bl func_8009AF14
/* 803F999C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803F99A0  7C 08 03 A6 */	mtlr r0
/* 803F99A4  38 21 00 60 */	addi r1, r1, 0x60
/* 803F99A8  4E 80 00 20 */	blr 
