lbl_805C6E18:
/* 805C6E18  38 00 00 25 */	li r0, 0x25
/* 805C6E1C  38 C0 00 00 */	li r6, 0
/* 805C6E20  38 80 00 00 */	li r4, 0
/* 805C6E24  7C 09 03 A6 */	mtctr r0
lbl_805C6E28:
/* 805C6E28  7C A3 32 14 */	add r5, r3, r6
/* 805C6E2C  38 C6 00 01 */	addi r6, r6, 1
/* 805C6E30  98 85 00 00 */	stb r4, 0(r5)
/* 805C6E34  98 85 00 25 */	stb r4, 0x25(r5)
/* 805C6E38  42 00 FF F0 */	bdnz lbl_805C6E28
/* 805C6E3C  4E 80 00 20 */	blr 