lbl_805AD7FC:
/* 805AD7FC  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 805AD800  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AD804  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 805AD808  7C 60 22 14 */	add r3, r0, r4
/* 805AD80C  3C 63 00 01 */	addis r3, r3, 1
/* 805AD810  88 03 9D 12 */	lbz r0, -0x62ee(r3)
/* 805AD814  54 03 07 BE */	clrlwi r3, r0, 0x1e
/* 805AD818  4E 80 00 20 */	blr 
