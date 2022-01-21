.include "macros.inc"

.section .text

.org 0x8005E860

.global sins
sins:
/* 8005E860 0005B7C0  54 60 E5 6B */	rlwinm. r0, r3, 0x1c, 0x15, 0x15
/* 8005E864 0005B7C4  54 64 E5 3E */	rlwinm r4, r3, 0x1c, 0x14, 0x1f
/* 8005E868 0005B7C8  41 82 00 20 */	beq lbl_8005E888
/* 8005E86C 0005B7CC  54 80 05 BE */	clrlwi r0, r4, 0x16
/* 8005E870 0005B7D0  3C 60 80 0E */	lis r3, sintable@ha
/* 8005E874 0005B7D4  20 00 03 FF */	subfic r0, r0, 0x3ff
/* 8005E878 0005B7D8  54 00 08 3C */	slwi r0, r0, 1
/* 8005E87C 0005B7DC  38 63 D3 60 */	addi r3, r3, sintable@l
/* 8005E880 0005B7E0  7C 63 02 AE */	lhax r3, r3, r0
/* 8005E884 0005B7E4  48 00 00 14 */	b lbl_8005E898
lbl_8005E888:
/* 8005E888 0005B7E8  3C 60 80 0E */	lis r3, sintable@ha
/* 8005E88C 0005B7EC  54 80 0D 7C */	rlwinm r0, r4, 1, 0x15, 0x1e
/* 8005E890 0005B7F0  38 63 D3 60 */	addi r3, r3, sintable@l
/* 8005E894 0005B7F4  7C 63 02 AE */	lhax r3, r3, r0
lbl_8005E898:
/* 8005E898 0005B7F8  54 80 05 29 */	rlwinm. r0, r4, 0, 0x14, 0x14
/* 8005E89C 0005B7FC  4D 82 00 20 */	beqlr 
/* 8005E8A0 0005B800  7C 03 00 D0 */	neg r0, r3
/* 8005E8A4 0005B804  7C 03 07 34 */	extsh r3, r0
/* 8005E8A8 0005B808  4E 80 00 20 */	blr 
