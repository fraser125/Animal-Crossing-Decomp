lbl_80592314:
/* 80592314  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80592318  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8059231C  3C 84 00 03 */	addis r4, r4, 3
/* 80592320  88 04 DB E2 */	lbz r0, -0x241e(r4)
/* 80592324  28 00 00 01 */	cmplwi r0, 1
/* 80592328  4C 82 00 20 */	bnelr 
/* 8059232C  38 00 00 00 */	li r0, 0
/* 80592330  3C 80 80 59 */	lis r4, aNHM_talk_request@ha /* 0x80592804@ha */
/* 80592334  98 03 08 31 */	stb r0, 0x831(r3)
/* 80592338  38 04 28 04 */	addi r0, r4, aNHM_talk_request@l /* 0x80592804@l */
/* 8059233C  90 03 09 64 */	stw r0, 0x964(r3)
/* 80592340  4E 80 00 20 */	blr 
