lbl_8039E4E8:
/* 8039E4E8  3C 60 81 16 */	lis r3, n_rumor@ha /* 0x81167824@ha */
/* 8039E4EC  80 A3 78 24 */	lwz r5, n_rumor@l(r3)  /* 0x81167824@l */
/* 8039E4F0  2C 05 00 00 */	cmpwi r5, 0
/* 8039E4F4  41 82 00 38 */	beq lbl_8039E52C
/* 8039E4F8  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8039E4FC  3C 60 81 16 */	lis r3, rumor_table@ha /* 0x81167828@ha */
/* 8039E500  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 8039E504  80 84 00 00 */	lwz r4, 0(r4)
/* 8039E508  38 63 78 28 */	addi r3, r3, rumor_table@l /* 0x81167828@l */
/* 8039E50C  80 84 00 A0 */	lwz r4, 0xa0(r4)
/* 8039E510  7C 04 2B 96 */	divwu r0, r4, r5
/* 8039E514  7C 00 29 D6 */	mullw r0, r0, r5
/* 8039E518  7C 00 20 50 */	subf r0, r0, r4
/* 8039E51C  54 00 10 3A */	slwi r0, r0, 2
/* 8039E520  7C 03 00 2E */	lwzx r0, r3, r0
/* 8039E524  64 03 60 00 */	oris r3, r0, 0x6000
/* 8039E528  4E 80 00 20 */	blr 
lbl_8039E52C:
/* 8039E52C  38 60 00 00 */	li r3, 0
/* 8039E530  4E 80 00 20 */	blr 
