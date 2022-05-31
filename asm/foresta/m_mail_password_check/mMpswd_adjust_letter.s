lbl_803BD4E0:
/* 803BD4E0  38 00 00 1C */	li r0, 0x1c
/* 803BD4E4  38 A0 00 4F */	li r5, 0x4f
/* 803BD4E8  38 80 00 6C */	li r4, 0x6c
/* 803BD4EC  7C 09 03 A6 */	mtctr r0
lbl_803BD4F0:
/* 803BD4F0  88 03 00 00 */	lbz r0, 0(r3)
/* 803BD4F4  2C 00 00 31 */	cmpwi r0, 0x31
/* 803BD4F8  41 82 00 1C */	beq lbl_803BD514
/* 803BD4FC  40 80 00 1C */	bge lbl_803BD518
/* 803BD500  2C 00 00 30 */	cmpwi r0, 0x30
/* 803BD504  40 80 00 08 */	bge lbl_803BD50C
/* 803BD508  48 00 00 10 */	b lbl_803BD518
lbl_803BD50C:
/* 803BD50C  98 A3 00 00 */	stb r5, 0(r3)
/* 803BD510  48 00 00 08 */	b lbl_803BD518
lbl_803BD514:
/* 803BD514  98 83 00 00 */	stb r4, 0(r3)
lbl_803BD518:
/* 803BD518  38 63 00 01 */	addi r3, r3, 1
/* 803BD51C  42 00 FF D4 */	bdnz lbl_803BD4F0
/* 803BD520  4E 80 00 20 */	blr 
