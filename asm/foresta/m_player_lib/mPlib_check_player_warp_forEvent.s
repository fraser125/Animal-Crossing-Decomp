lbl_803DBF68:
/* 803DBF68  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DBF6C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DBF70  3C 63 00 03 */	addis r3, r3, 3
/* 803DBF74  88 63 85 BD */	lbz r3, -0x7a43(r3)
/* 803DBF78  7C 63 07 74 */	extsb r3, r3
/* 803DBF7C  4E 80 00 20 */	blr 
