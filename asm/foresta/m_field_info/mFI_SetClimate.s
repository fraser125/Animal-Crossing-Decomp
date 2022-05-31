lbl_803AB354:
/* 803AB354  2C 03 00 06 */	cmpwi r3, 6
/* 803AB358  40 82 00 38 */	bne lbl_803AB390
/* 803AB35C  3C 60 81 16 */	lis r3, l_mFI_climate@ha /* 0x81167D00@ha */
/* 803AB360  84 03 7D 00 */	lwzu r0, l_mFI_climate@l(r3)  /* 0x81167D00@l */
/* 803AB364  2C 00 00 01 */	cmpwi r0, 1
/* 803AB368  41 82 00 1C */	beq lbl_803AB384
/* 803AB36C  4C 80 00 20 */	bgelr 
/* 803AB370  2C 00 00 00 */	cmpwi r0, 0
/* 803AB374  4D 80 00 20 */	bltlr 
/* 803AB378  38 00 00 02 */	li r0, 2
/* 803AB37C  90 03 00 00 */	stw r0, 0(r3)
/* 803AB380  4E 80 00 20 */	blr 
lbl_803AB384:
/* 803AB384  38 00 00 03 */	li r0, 3
/* 803AB388  90 03 00 00 */	stw r0, 0(r3)
/* 803AB38C  4E 80 00 20 */	blr 
lbl_803AB390:
/* 803AB390  3C 80 81 16 */	lis r4, l_mFI_climate@ha /* 0x81167D00@ha */
/* 803AB394  90 64 7D 00 */	stw r3, l_mFI_climate@l(r4)  /* 0x81167D00@l */
/* 803AB398  4E 80 00 20 */	blr 
