lbl_80541430:
/* 80541430  3C 60 81 1F */	lis r3, tbl@ha /* 0x811EBD34@ha */
/* 80541434  3C 80 80 6A */	lis r4, aNPC_left_drt_table@ha /* 0x806A3DB4@ha */
/* 80541438  38 C3 BD 34 */	addi r6, r3, tbl@l /* 0x811EBD34@l */
/* 8054143C  38 60 00 00 */	li r3, 0
/* 80541440  88 06 03 82 */	lbz r0, 0x382(r6)
/* 80541444  38 84 3D B4 */	addi r4, r4, aNPC_left_drt_table@l /* 0x806A3DB4@l */
/* 80541448  80 A6 03 84 */	lwz r5, 0x384(r6)
/* 8054144C  7C 00 0E 70 */	srawi r0, r0, 1
/* 80541450  54 07 10 3A */	slwi r7, r0, 2
/* 80541454  80 A5 00 00 */	lwz r5, 0(r5)
/* 80541458  7C 84 38 2E */	lwzx r4, r4, r7
/* 8054145C  7C A0 20 39 */	and. r0, r5, r4
/* 80541460  41 82 00 0C */	beq lbl_8054146C
/* 80541464  98 86 03 82 */	stb r4, 0x382(r6)
/* 80541468  4E 80 00 20 */	blr 
lbl_8054146C:
/* 8054146C  3C 80 80 6A */	lis r4, aNPC_right_drt_table@ha /* 0x806A3DC8@ha */
/* 80541470  38 84 3D C8 */	addi r4, r4, aNPC_right_drt_table@l /* 0x806A3DC8@l */
/* 80541474  7C 84 38 2E */	lwzx r4, r4, r7
/* 80541478  7C A0 20 39 */	and. r0, r5, r4
/* 8054147C  41 82 00 0C */	beq lbl_80541488
/* 80541480  98 86 03 82 */	stb r4, 0x382(r6)
/* 80541484  4E 80 00 20 */	blr 
lbl_80541488:
/* 80541488  38 60 00 01 */	li r3, 1
/* 8054148C  4E 80 00 20 */	blr 
