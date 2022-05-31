lbl_8050A0C4:
/* 8050A0C4  3C 80 80 6A */	lis r4, exceptional_table@ha /* 0x8069EEFC@ha */
/* 8050A0C8  38 04 EE FC */	addi r0, r4, exceptional_table@l /* 0x8069EEFC@l */
/* 8050A0CC  7C 05 03 78 */	mr r5, r0
/* 8050A0D0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8050A0D4  48 00 00 18 */	b lbl_8050A0EC
lbl_8050A0D8:
/* 8050A0D8  7C 04 00 40 */	cmplw r4, r0
/* 8050A0DC  40 82 00 0C */	bne lbl_8050A0E8
/* 8050A0E0  A0 65 00 02 */	lhz r3, 2(r5)
/* 8050A0E4  4E 80 00 20 */	blr 
lbl_8050A0E8:
/* 8050A0E8  38 A5 00 04 */	addi r5, r5, 4
lbl_8050A0EC:
/* 8050A0EC  A0 85 00 00 */	lhz r4, 0(r5)
/* 8050A0F0  28 04 01 25 */	cmplwi r4, 0x125
/* 8050A0F4  40 82 FF E4 */	bne lbl_8050A0D8
/* 8050A0F8  4E 80 00 20 */	blr 
