lbl_80576920:
/* 80576920  3C 80 80 65 */	lis r4, lit_579@ha /* 0x80649994@ha */
/* 80576924  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80576928  C0 04 99 94 */	lfs f0, lit_579@l(r4)  /* 0x80649994@l */
/* 8057692C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80576930  4C 80 00 20 */	bgelr 
/* 80576934  38 00 FF FF */	li r0, -1
/* 80576938  90 03 09 94 */	stw r0, 0x994(r3)
/* 8057693C  4E 80 00 20 */	blr 
