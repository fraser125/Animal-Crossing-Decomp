lbl_8041A770:
/* 8041A770  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041A774  38 00 00 00 */	li r0, 0
/* 8041A778  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8041A77C  38 60 00 01 */	li r3, 1
/* 8041A780  3C 84 00 02 */	addis r4, r4, 2
/* 8041A784  90 04 04 A4 */	stw r0, 0x4a4(r4)
/* 8041A788  B0 04 04 A8 */	sth r0, 0x4a8(r4)
/* 8041A78C  4E 80 00 20 */	blr 