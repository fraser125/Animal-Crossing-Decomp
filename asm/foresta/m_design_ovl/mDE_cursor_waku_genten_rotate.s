lbl_805D1C28:
/* 805D1C28  80 A3 06 6C */	lwz r5, 0x66c(r3)
/* 805D1C2C  80 03 06 7C */	lwz r0, 0x67c(r3)
/* 805D1C30  7C 05 00 00 */	cmpw r5, r0
/* 805D1C34  40 82 00 AC */	bne lbl_805D1CE0
/* 805D1C38  80 A3 06 68 */	lwz r5, 0x668(r3)
/* 805D1C3C  80 03 06 78 */	lwz r0, 0x678(r3)
/* 805D1C40  7C 05 00 00 */	cmpw r5, r0
/* 805D1C44  40 82 00 9C */	bne lbl_805D1CE0
/* 805D1C48  2C 04 00 06 */	cmpwi r4, 6
/* 805D1C4C  41 82 00 5C */	beq lbl_805D1CA8
/* 805D1C50  40 80 00 14 */	bge lbl_805D1C64
/* 805D1C54  2C 04 00 04 */	cmpwi r4, 4
/* 805D1C58  41 82 00 18 */	beq lbl_805D1C70
/* 805D1C5C  40 80 00 30 */	bge lbl_805D1C8C
/* 805D1C60  48 00 00 80 */	b lbl_805D1CE0
lbl_805D1C64:
/* 805D1C64  2C 04 00 08 */	cmpwi r4, 8
/* 805D1C68  40 80 00 78 */	bge lbl_805D1CE0
/* 805D1C6C  48 00 00 58 */	b lbl_805D1CC4
lbl_805D1C70:
/* 805D1C70  88 03 06 D9 */	lbz r0, 0x6d9(r3)
/* 805D1C74  28 00 00 02 */	cmplwi r0, 2
/* 805D1C78  40 82 00 68 */	bne lbl_805D1CE0
/* 805D1C7C  38 00 00 01 */	li r0, 1
/* 805D1C80  98 03 06 D8 */	stb r0, 0x6d8(r3)
/* 805D1C84  38 60 00 01 */	li r3, 1
/* 805D1C88  4E 80 00 20 */	blr 
lbl_805D1C8C:
/* 805D1C8C  88 03 06 D9 */	lbz r0, 0x6d9(r3)
/* 805D1C90  28 00 00 03 */	cmplwi r0, 3
/* 805D1C94  40 82 00 4C */	bne lbl_805D1CE0
/* 805D1C98  38 00 00 00 */	li r0, 0
/* 805D1C9C  98 03 06 D8 */	stb r0, 0x6d8(r3)
/* 805D1CA0  38 60 00 01 */	li r3, 1
/* 805D1CA4  4E 80 00 20 */	blr 
lbl_805D1CA8:
/* 805D1CA8  88 03 06 D9 */	lbz r0, 0x6d9(r3)
/* 805D1CAC  28 00 00 00 */	cmplwi r0, 0
/* 805D1CB0  40 82 00 30 */	bne lbl_805D1CE0
/* 805D1CB4  38 00 00 03 */	li r0, 3
/* 805D1CB8  98 03 06 D8 */	stb r0, 0x6d8(r3)
/* 805D1CBC  38 60 00 01 */	li r3, 1
/* 805D1CC0  4E 80 00 20 */	blr 
lbl_805D1CC4:
/* 805D1CC4  88 03 06 D9 */	lbz r0, 0x6d9(r3)
/* 805D1CC8  28 00 00 01 */	cmplwi r0, 1
/* 805D1CCC  40 82 00 14 */	bne lbl_805D1CE0
/* 805D1CD0  38 00 00 02 */	li r0, 2
/* 805D1CD4  98 03 06 D8 */	stb r0, 0x6d8(r3)
/* 805D1CD8  38 60 00 01 */	li r3, 1
/* 805D1CDC  4E 80 00 20 */	blr 
lbl_805D1CE0:
/* 805D1CE0  38 60 00 00 */	li r3, 0
/* 805D1CE4  4E 80 00 20 */	blr 
