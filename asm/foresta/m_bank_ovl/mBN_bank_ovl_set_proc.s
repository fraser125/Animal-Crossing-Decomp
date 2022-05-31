lbl_805C4474:
/* 805C4474  3C 80 80 5C */	lis r4, mBN_bank_ovl_move@ha /* 0x805C3D60@ha */
/* 805C4478  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C447C  38 04 3D 60 */	addi r0, r4, mBN_bank_ovl_move@l /* 0x805C3D60@l */
/* 805C4480  3C 60 80 5C */	lis r3, mBN_bank_ovl_draw@ha /* 0x805C440C@ha */
/* 805C4484  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805C4488  38 03 44 0C */	addi r0, r3, mBN_bank_ovl_draw@l /* 0x805C440C@l */
/* 805C448C  90 05 09 10 */	stw r0, 0x910(r5)
/* 805C4490  4E 80 00 20 */	blr 
