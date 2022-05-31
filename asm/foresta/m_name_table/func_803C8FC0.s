lbl_803C8FC0:
/* 803C8FC0  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803C8FC4  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 803C8FC8  2C 00 00 02 */	cmpwi r0, 2
/* 803C8FCC  41 82 00 78 */	beq lbl_803C9044
/* 803C8FD0  40 80 00 10 */	bge lbl_803C8FE0
/* 803C8FD4  2C 00 00 01 */	cmpwi r0, 1
/* 803C8FD8  40 80 00 10 */	bge lbl_803C8FE8
/* 803C8FDC  48 00 00 84 */	b lbl_803C9060
lbl_803C8FE0:
/* 803C8FE0  2C 00 00 04 */	cmpwi r0, 4
/* 803C8FE4  40 80 00 7C */	bge lbl_803C9060
lbl_803C8FE8:
/* 803C8FE8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803C8FEC  28 00 1E EC */	cmplwi r0, 0x1eec
/* 803C8FF0  41 80 00 14 */	blt lbl_803C9004
/* 803C8FF4  28 00 1F 4F */	cmplwi r0, 0x1f4f
/* 803C8FF8  41 81 00 0C */	bgt lbl_803C9004
/* 803C8FFC  38 60 00 32 */	li r3, 0x32
/* 803C9000  4E 80 00 20 */	blr 
lbl_803C9004:
/* 803C9004  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803C9008  28 00 15 B0 */	cmplwi r0, 0x15b0
/* 803C900C  41 80 00 14 */	blt lbl_803C9020
/* 803C9010  28 00 17 AB */	cmplwi r0, 0x17ab
/* 803C9014  41 81 00 0C */	bgt lbl_803C9020
/* 803C9018  38 60 00 10 */	li r3, 0x10
/* 803C901C  4E 80 00 20 */	blr 
lbl_803C9020:
/* 803C9020  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803C9024  28 00 2B 00 */	cmplwi r0, 0x2b00
/* 803C9028  41 80 00 14 */	blt lbl_803C903C
/* 803C902C  28 00 2B 0F */	cmplwi r0, 0x2b0f
/* 803C9030  41 81 00 0C */	bgt lbl_803C903C
/* 803C9034  38 60 00 33 */	li r3, 0x33
/* 803C9038  4E 80 00 20 */	blr 
lbl_803C903C:
/* 803C903C  38 60 00 0A */	li r3, 0xa
/* 803C9040  4E 80 00 20 */	blr 
lbl_803C9044:
/* 803C9044  3C 60 80 66 */	lis r3, item1_tableNo@ha /* 0x8065A8B0@ha */
/* 803C9048  54 A4 D6 BA */	rlwinm r4, r5, 0x1a, 0x1a, 0x1d
/* 803C904C  38 63 A8 B0 */	addi r3, r3, item1_tableNo@l /* 0x8065A8B0@l */
/* 803C9050  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 803C9054  7C 63 20 2E */	lwzx r3, r3, r4
/* 803C9058  7C 63 00 AE */	lbzx r3, r3, r0
/* 803C905C  4E 80 00 20 */	blr 
lbl_803C9060:
/* 803C9060  38 60 00 00 */	li r3, 0
/* 803C9064  4E 80 00 20 */	blr 
