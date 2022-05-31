lbl_803C957C:
/* 803C957C  38 03 FF FB */	addi r0, r3, -5
/* 803C9580  3C 80 80 66 */	lis r4, height_table@ha /* 0x8065AA60@ha */
/* 803C9584  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803C9588  28 00 00 02 */	cmplwi r0, 2
/* 803C958C  38 04 AA 60 */	addi r0, r4, height_table@l /* 0x8065AA60@l */
/* 803C9590  7C 05 03 78 */	mr r5, r0
/* 803C9594  40 81 00 18 */	ble lbl_803C95AC
/* 803C9598  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803C959C  28 04 00 0B */	cmplwi r4, 0xb
/* 803C95A0  41 82 00 0C */	beq lbl_803C95AC
/* 803C95A4  28 04 00 10 */	cmplwi r4, 0x10
/* 803C95A8  40 82 00 14 */	bne lbl_803C95BC
lbl_803C95AC:
/* 803C95AC  3C 60 80 66 */	lis r3, height_table@ha /* 0x8065AA60@ha */
/* 803C95B0  38 63 AA 60 */	addi r3, r3, height_table@l /* 0x8065AA60@l */
/* 803C95B4  38 A3 00 0C */	addi r5, r3, 0xc
/* 803C95B8  48 00 00 28 */	b lbl_803C95E0
lbl_803C95BC:
/* 803C95BC  38 03 FF F4 */	addi r0, r3, -12
/* 803C95C0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803C95C4  28 00 00 02 */	cmplwi r0, 2
/* 803C95C8  40 81 00 0C */	ble lbl_803C95D4
/* 803C95CC  28 04 00 0F */	cmplwi r4, 0xf
/* 803C95D0  40 82 00 10 */	bne lbl_803C95E0
lbl_803C95D4:
/* 803C95D4  3C 60 80 66 */	lis r3, height_table@ha /* 0x8065AA60@ha */
/* 803C95D8  38 63 AA 60 */	addi r3, r3, height_table@l /* 0x8065AA60@l */
/* 803C95DC  38 A3 00 18 */	addi r5, r3, 0x18
lbl_803C95E0:
/* 803C95E0  7C A3 2B 78 */	mr r3, r5
/* 803C95E4  4E 80 00 20 */	blr 
