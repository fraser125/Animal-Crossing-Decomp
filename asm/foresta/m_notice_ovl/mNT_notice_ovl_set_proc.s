lbl_805EC354:
/* 805EC354  3C 80 80 5F */	lis r4, mNT_notice_ovl_move@ha /* 0x805EB6BC@ha */
/* 805EC358  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805EC35C  38 04 B6 BC */	addi r0, r4, mNT_notice_ovl_move@l /* 0x805EB6BC@l */
/* 805EC360  3C 60 80 5F */	lis r3, mNT_notice_ovl_draw@ha /* 0x805EC2FC@ha */
/* 805EC364  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805EC368  38 03 C2 FC */	addi r0, r3, mNT_notice_ovl_draw@l /* 0x805EC2FC@l */
/* 805EC36C  90 05 09 10 */	stw r0, 0x910(r5)
/* 805EC370  4E 80 00 20 */	blr 
