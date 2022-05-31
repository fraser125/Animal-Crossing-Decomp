lbl_805B2AFC:
/* 805B2AFC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B2B00  3C 60 80 6C */	lis r3, flower_pal_idx_table@ha /* 0x806C588C@ha */
/* 805B2B04  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B2B08  3C 84 00 02 */	addis r4, r4, 2
/* 805B2B0C  38 63 58 8C */	addi r3, r3, flower_pal_idx_table@l /* 0x806C588C@l */
/* 805B2B10  80 04 61 14 */	lwz r0, 0x6114(r4)
/* 805B2B14  54 00 10 3A */	slwi r0, r0, 2
/* 805B2B18  7C 63 00 2E */	lwzx r3, r3, r0
/* 805B2B1C  4E 80 00 20 */	blr 
