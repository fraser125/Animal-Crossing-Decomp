lbl_80587B2C:
/* 80587B2C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80587B30  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80587B34  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80587B38  38 C0 00 00 */	li r6, 0
/* 80587B3C  3C A4 00 02 */	addis r5, r4, 2
/* 80587B40  88 85 41 89 */	lbz r4, 0x4189(r5)
/* 80587B44  7C 80 00 39 */	and. r0, r4, r0
/* 80587B48  40 82 00 10 */	bne lbl_80587B58
/* 80587B4C  7C 80 1B 78 */	or r0, r4, r3
/* 80587B50  38 C0 00 01 */	li r6, 1
/* 80587B54  98 05 41 89 */	stb r0, 0x4189(r5)
lbl_80587B58:
/* 80587B58  7C C3 33 78 */	mr r3, r6
/* 80587B5C  4E 80 00 20 */	blr 
