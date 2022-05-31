lbl_804CAD58:
/* 804CAD58  38 00 01 00 */	li r0, 0x100
/* 804CAD5C  7C 09 03 A6 */	mtctr r0
lbl_804CAD60:
/* 804CAD60  88 04 00 00 */	lbz r0, 0(r4)
/* 804CAD64  38 84 00 01 */	addi r4, r4, 1
/* 804CAD68  98 03 00 00 */	stb r0, 0(r3)
/* 804CAD6C  38 63 00 01 */	addi r3, r3, 1
/* 804CAD70  42 00 FF F0 */	bdnz lbl_804CAD60
/* 804CAD74  4E 80 00 20 */	blr 
