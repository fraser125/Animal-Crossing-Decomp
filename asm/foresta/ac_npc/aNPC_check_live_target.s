lbl_80530E40:
/* 80530E40  28 03 00 00 */	cmplwi r3, 0
/* 80530E44  38 80 00 01 */	li r4, 1
/* 80530E48  41 82 00 1C */	beq lbl_80530E64
/* 80530E4C  80 03 01 64 */	lwz r0, 0x164(r3)
/* 80530E50  28 00 00 00 */	cmplwi r0, 0
/* 80530E54  40 82 00 14 */	bne lbl_80530E68
/* 80530E58  80 03 01 68 */	lwz r0, 0x168(r3)
/* 80530E5C  28 00 00 00 */	cmplwi r0, 0
/* 80530E60  40 82 00 08 */	bne lbl_80530E68
lbl_80530E64:
/* 80530E64  38 80 00 00 */	li r4, 0
lbl_80530E68:
/* 80530E68  7C 83 23 78 */	mr r3, r4
/* 80530E6C  4E 80 00 20 */	blr 
