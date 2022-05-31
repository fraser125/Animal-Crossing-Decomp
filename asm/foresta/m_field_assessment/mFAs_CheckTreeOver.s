lbl_803A18DC:
/* 803A18DC  3C 80 80 65 */	lis r4, data_806534A0@ha /* 0x806534A0@ha */
/* 803A18E0  7C 65 FE 70 */	srawi r5, r3, 0x1f
/* 803A18E4  38 84 34 A0 */	addi r4, r4, data_806534A0@l /* 0x806534A0@l */
/* 803A18E8  88 04 00 03 */	lbz r0, 3(r4)
/* 803A18EC  54 04 0F FE */	srwi r4, r0, 0x1f
/* 803A18F0  7C 00 18 10 */	subfc r0, r0, r3
/* 803A18F4  7C 65 21 14 */	adde r3, r5, r4
/* 803A18F8  4E 80 00 20 */	blr 
