lbl_804C1844:
/* 804C1844  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C1848  7C 08 02 A6 */	mflr r0
/* 804C184C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C1850  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804C1854  7C 7F 1B 78 */	mr r31, r3
/* 804C1858  A8 03 00 16 */	lha r0, 0x16(r3)
/* 804C185C  2C 00 00 02 */	cmpwi r0, 2
/* 804C1860  41 82 00 60 */	beq lbl_804C18C0
/* 804C1864  40 80 00 B0 */	bge lbl_804C1914
/* 804C1868  2C 00 00 01 */	cmpwi r0, 1
/* 804C186C  40 80 00 08 */	bge lbl_804C1874
/* 804C1870  48 00 00 A4 */	b lbl_804C1914
lbl_804C1874:
/* 804C1874  80 7F 00 00 */	lwz r3, 0(r31)
/* 804C1878  38 81 00 20 */	addi r4, r1, 0x20
/* 804C187C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C1880  38 A0 00 01 */	li r5, 1
/* 804C1884  90 61 00 20 */	stw r3, 0x20(r1)
/* 804C1888  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C188C  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C1890  90 01 00 28 */	stw r0, 0x28(r1)
/* 804C1894  A0 7F 00 18 */	lhz r3, 0x18(r31)
/* 804C1898  4B EE 5F 99 */	bl mFI_SetFG_common
/* 804C189C  80 9F 00 00 */	lwz r4, 0(r31)
/* 804C18A0  38 61 00 14 */	addi r3, r1, 0x14
/* 804C18A4  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C18A8  90 81 00 14 */	stw r4, 0x14(r1)
/* 804C18AC  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C18B0  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C18B4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C18B8  4B EE 77 71 */	bl mFI_Wpos2DepositOFF
/* 804C18BC  48 00 00 58 */	b lbl_804C1914
lbl_804C18C0:
/* 804C18C0  A0 7F 00 1A */	lhz r3, 0x1a(r31)
/* 804C18C4  7F E5 FB 78 */	mr r5, r31
/* 804C18C8  A0 9F 00 18 */	lhz r4, 0x18(r31)
/* 804C18CC  38 C0 00 01 */	li r6, 1
/* 804C18D0  4B FF EC 51 */	bl bIT_common_hole_throw
/* 804C18D4  A0 1F 00 1A */	lhz r0, 0x1a(r31)
/* 804C18D8  28 00 00 00 */	cmplwi r0, 0
/* 804C18DC  40 82 00 38 */	bne lbl_804C1914
/* 804C18E0  A0 1F 00 18 */	lhz r0, 0x18(r31)
/* 804C18E4  28 00 00 5D */	cmplwi r0, 0x5d
/* 804C18E8  40 82 00 2C */	bne lbl_804C1914
/* 804C18EC  80 DF 00 00 */	lwz r6, 0(r31)
/* 804C18F0  38 81 00 08 */	addi r4, r1, 8
/* 804C18F4  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C18F8  38 60 00 5C */	li r3, 0x5c
/* 804C18FC  38 A0 00 01 */	li r5, 1
/* 804C1900  90 C1 00 08 */	stw r6, 8(r1)
/* 804C1904  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C1908  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C190C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C1910  4B EE 5F 21 */	bl mFI_SetFG_common
lbl_804C1914:
/* 804C1914  38 00 00 00 */	li r0, 0
/* 804C1918  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 804C191C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C1920  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804C1924  7C 08 03 A6 */	mtlr r0
/* 804C1928  38 21 00 40 */	addi r1, r1, 0x40
/* 804C192C  4E 80 00 20 */	blr 