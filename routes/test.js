var express = require('express');
var router = express.Router();

/* PATH / */
router.get('/', function (req, res, next) {
    const response = {
        message: "You performed a GET / "
    };
    res.status(200).json(response);
});

router.post('/', function (req, res, next) {
    const response = {
        message: "You performed a POST / "
    };
    res.status(200).json(response);
});

module.exports = router;
