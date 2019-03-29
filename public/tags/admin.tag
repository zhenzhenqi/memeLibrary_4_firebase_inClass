<admin>
  <div class="memeMaker">
    <input type="text" ref="urlEl" placeholder="Enter url">
    <input type="text" ref="captionEl" placeholder="Enter caption">
    <input type="text" ref="funnyEl" placeholder="Enter funness (0 to 5)">
    <button type="button" onclick={ saveMeme }>Add Meme</button>
  </div>

  <div class="filter">
    <p>Select level of fun</p>
    <select ref="fun" value="" onchange={ filterResults }>
      <option value="default">Default</option>
      <option value="nofun">No Fun</option>
      <option value="somewhatfun">Some Fun</option>
      <option value="veryfun">Very Fun</option>
    </select>
  </div>

  <div show={ myMemes.length == 0 }>
    <p>NO MEMEs. Add a meme from above.</p>
  </div>

  <admin_entry each={ myMemes }></admin_entry>

  <script>
    //console.log(this);
    var tag = this;

    //prepare to push into memes subdirectory in our database
    var messagesRef = rootRef.child('/memes');

    this.myMemes = [];

    this.saveMeme = function () {
      // produce a unique key with the firebase push method


      //design the structure of your data


      //set the meme inside your firebase library, using the unique key
      //as a child reference directly bellew the root reference.


      //clean up default input values
      this.refs.urlEl.value = "";
      this.refs.captionEl.value = "";
      this.refs.funnyEl.value = "";
    }

    messagesRef.on('value', function (snap) {
      //set up a new js variable to temporaroly store the returned snapshot js object


      //translate the firebase json data object in to an array format
      //which basically take us back to the good old days of temporarily storing
      //dummy data inside a javascript array

      //make an empty array just like what we used to do before firebase


      //instead of statically typing out the array value, we now read it in
      //from the firebase data obj using a js for loop structure


      //finally, we copy this array back to our tag's property field
      // console.log("myMemes", tag.myMemes);


      //update tag manually



    }
  </script>

  <style>
    :scope {
      display: block;
      padding: 2em;
    }

    .filter,
    .memeMaker {
      padding: 2em;
      margin-top: 2em;
      background-color: grey;
    }
  </style>
</admin>
