lbl_803C0C64:
/* 803C0C64  34 84 FF FF */	addic. r4, r4, -1
/* 803C0C68  38 04 00 01 */	addi r0, r4, 1
/* 803C0C6C  7C 63 22 14 */	add r3, r3, r4
/* 803C0C70  7C 09 03 A6 */	mtctr r0
/* 803C0C74  41 80 00 1C */	blt lbl_803C0C90
lbl_803C0C78:
/* 803C0C78  88 03 00 00 */	lbz r0, 0(r3)
/* 803C0C7C  28 00 00 20 */	cmplwi r0, 0x20
/* 803C0C80  40 82 00 10 */	bne lbl_803C0C90
/* 803C0C84  38 84 FF FF */	addi r4, r4, -1
/* 803C0C88  38 63 FF FF */	addi r3, r3, -1
/* 803C0C8C  42 00 FF EC */	bdnz lbl_803C0C78
lbl_803C0C90:
/* 803C0C90  38 64 00 01 */	addi r3, r4, 1
/* 803C0C94  4E 80 00 20 */	blr 
